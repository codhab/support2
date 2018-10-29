require 'net/http'

namespace :populate_pivotal do 
  task populate: :environment do 
    Rake::Task["populate_pivotal:nav"].invoke

    p 'Pivotal populado.'
  end

  task nav: :environment do 
    populate = JSON.parse(File.open('../files/extranet/person/navs.json').read)

    populate.data['navs'].each do |nav|
      object = Support::Pivotal::Nav.new
      object.label         = nav['label']
      object.description   = nav['description']
      object.save!
      
      if nav.has_key?('childrens') 
        nav['childrens'].each do |subnav|
          sub_object = Support::Pivotal::Nav.new
          sub_object.label      = subnav['label']
          sub_object.url        = subnav['url']
          sub_object.father_id  = object.id
          sub_object.save!

          if subnav.has_key?('childrens') 
            subnav['childrens'].each do |subsubnav|
              sub_sub_object = Support::Pivotal::Nav.new
              sub_sub_object.label      = subsubnav['label']
              sub_sub_object.url        = subsubnav['url']
              sub_sub_object.father_id  = sub_object.id
              sub_sub_object.save!
            end
          end
        end
      end
    end    
  end 
end