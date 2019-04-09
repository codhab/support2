require 'net/http'

namespace :populate_cms do
  task populate: :environment do
    Rake::Task["populate_cms:navs"].invoke
    p 'CMS populado.'
  end

  task navs: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/extranet/cms/navs.json").read)

    populate["category_types"].each do |row|
      type_obj = Support::Cms::NavCategoryType.new
      type_obj.name = row["name"]
      type_obj.save

      row['categories'].each do |cat|
        c = Support::Cms::NavCategory.new
        c.name = cat['name']
        c.category_type_id = type_obj.id
        c.save

        cat['navs'].each do |nav|
          n = Support::Cms::Nav.new
          n.name         = nav["name"]
          n.position     = nav["position"]
          n.publish      = nav["publish"]
          n.target_blank = nav["target_blank"]
          n.url          = (nav["url"] rescue nil)
          n.color        = (nav["color"] rescue nil)
          n.category_id  = c.id

          n.save

          if nav.has_key?('childrens')
            nav['childrens'].each do |child|
              ch = Support::Cms::Nav.new
              ch.father_id    = n.id
              ch.name         = child["name"]
              ch.position     = child["position"]
              ch.publish      = child["publish"]
              ch.target_blank = child["target_blank"]
              ch.url          = (child["url"] rescue nil)

              ch.save  
              
              if child.has_key?('childrens')
                child['childrens'].each do |subchild|
                  chs = Support::Cms::Nav.new
                  chs.father_id    = ch.id
                  chs.name         = subchild["name"]
                  chs.position     = subchild["position"]
                  chs.publish      = subchild["publish"]
                  chs.target_blank = subchild["target_blank"]
                  chs.url          = (subchild["url"] rescue nil)

                  chs.save
                end 
              end
            end
          end
        end
      end
    end
  end

end