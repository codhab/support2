require 'net/http'

namespace :populate_pivotal do 
  task populate: :environment do 
    Rake::Task["populate_pivotal:nav"].invoke
    Rake::Task["populate_pivotal:engine"].invoke
    Rake::Task["populate_pivotal:sector"].invoke
    Rake::Task["populate_pivotal:job"].invoke
    Rake::Task["populate_pivotal:user"].invoke

    p 'Person populado.'
    p 'Pivotal populado.'
  end

  task nav: :environment do 
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/extranet/pivotal/navs.json").read)

    populate['navs'].each do |nav|
      object = Support::Pivotal::Nav.new
      object.label         = nav['label']
      object.position      = nav['position']
      object.description   = nav['description']
      object.save!
      
      if nav.has_key?('childrens') 
        nav['childrens'].each do |subnav|
          sub_object = Support::Pivotal::Nav.new
          sub_object.label      = subnav['label']
          sub_object.url        = subnav['url']
          sub_object.father_id  = object.id
          sub_object.position   = subnav['position']
          sub_object.save!
        end
      end
    end    
  end 

  task sector: :environment do 
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/extranet/pivotal/sectors.json").read)

    populate['sector'].each do |sector|
      object = Support::Pivotal::Sector.new
      object.id     = sector['id']
      object.name   = sector['name']
      object.acron  = sector['acron']
      object.prefex = sector['prefex']
      object.father_id = sector['father_id']
      object.responsible_id = sector['responsible_id']
      object.save(validate: false)
    end
  end

  task engine: :environment do 
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/extranet/pivotal/engines.json").read)

    populate['engine'].each do |engine|
      object = Support::Pivotal::Engine.new
      object.id     = engine['id']
      object.name   = engine['name']
      object.code  = engine['code']
      object.save(validate: false)
    end
  end

  task job: :environment do 
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/extranet/pivotal/job.json").read)

    populate['job'].each do |job|
      object = Support::Pivotal::Job.new
      object.id     = job['id']
      object.name   = job['name']
      object.salary = job['salary']
      object.function_code = job['function_code']
      object.save(validate: false)
    end
  end


  task user: :environment do 
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/extranet/pivotal/users.json").read)

    populate['user'].each do |sector|
      object = Support::Pivotal::User.new
      object.username = sector['username']
      object.name     = sector['name']
      object.status   = sector['status']
      object.administrator = sector['administrator']
      object.job_id = sector['job_id']
      object.sector_id = sector['sector_id']
      object.password = sector['password']
      object.save(validate: false)
    end
  end
end