require 'net/http'

namespace :populate_person do 
  task populate: :environment do 
    Rake::Task["populate_person:contract_type"].invoke
    Rake::Task["populate_person:sector"].invoke
    Rake::Task["populate_person:job"].invoke
    Rake::Task["populate_person:staff"].invoke
  end

  task contract_type: :environment do 
    populate = Support::HttpService.new('raw.githubusercontent.com', '/codhab/populate/master/extranet/person/contract_type.json')

    populate.data['contract_types'].each do |sector|
      object = Support::Person::ContractType.new
      object.id     = sector['id']
      object.name   = sector['name']
      object.save(validate: false)
    end
  end

  task sector: :environment do 
    populate = Support::HttpService.new('raw.githubusercontent.com', '/codhab/populate/master/extranet/person/sectors.json')

    populate.data['sector'].each do |sector|
      object = Support::Person::Sector.new
      object.id     = sector['id']
      object.name   = sector['name']
      object.acron  = sector['acron']
      object.prefex = sector['prefex']
      object.father_id = sector['father_id']
      object.responsible_id = sector['responsible_id']
      object.save(validate: false)
    end
  end

  task job: :environment do 
    populate = Support::HttpService.new('raw.githubusercontent.com', '/codhab/populate/master/extranet/person/job.json')

    populate.data['job'].each do |sector|
      object = Support::Person::Job.new
      object.id     = sector['id']
      object.name   = sector['name']
      object.salary = sector['salary']
      object.function_code = sector['function_code']
      object.save(validate: false)
    end
  end


  task staff: :environment do 
    populate = Support::HttpService.new('raw.githubusercontent.com', '/codhab/populate/master/extranet/person/staffs.json')

    populate.data['staff'].each do |sector|
      object = Support::Person::Staff.new
      object.code     = sector['code']
      object.name   = sector['name']
      object.status   = sector['status']
      object.administrator = sector['administrator']
      object.job_id = sector['job_id']
      object.sector_origin_id = sector['sector_origin_id']
      object.sector_current_id = sector['sector_current_id']
      object.password = sector['password']
      object.save(validate: false)
    end
  end
end