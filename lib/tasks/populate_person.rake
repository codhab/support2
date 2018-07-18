require 'net/http'

namespace :populate_person do 
  task populate: :environment do 
    Rake::Task["populate_common:contract_type"].invoke
    Rake::Task["populate_common:sector"].invoke
    Rake::Task["populate_common:job"].invoke
    Rake::Task["populate_common:staff"].invoke
  end

  task contract_type: :environment do 
    populate = Support::HttpService.new('raw.githubusercontent.com', '/codhab/populate/master/common/state_and_cities.json')

    populate.data.each do |state|
      state_obj = Support::Common::State.new(acronym: state['acronym'],name: state['name'])
      state_obj.save
      state['cities'].each do |city|
        c = Support::Common::City.new
        c.name = city['name']
        c.state_id = state_obj.id
        c.capital = (city['name'] == state['capital'])
        c.save
      end
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
      object.save
    end
  end

  task job: :environment do 
    populate = Support::HttpService.new('raw.githubusercontent.com', '/codhab/populate/master/extranet/person/sectors.json')

    populate.data['sector'].each do |sector|
      object = Support::Person::Sector.new
      object.id     = sector['id']
      object.name   = sector['name']
      object.acron  = sector['acron']
      object.prefex = sector['prefex']
      object.father_id = sector['father_id']
      object.responsible_id = sector['responsible_id']
      object.save
    end
  end


  task staff: :environment do 
  end
