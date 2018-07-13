require 'net/http'

namespace :populate_common do 
  task populate: :environment do 
    Rake::Task["populate_common:state_and_city"].invoke
    Rake::Task["populate_common:shared_tables"].invoke
  end

  task state_and_city: :environment do 
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

  task shared_tables: :environment do 
    populate = Support::HttpService.new('raw.githubusercontent.com', '/codhab/populate/master/common/shared_tables.json')
    
    array = ['civil_states', 'kinships', 'special_condition_types', 'genders', 
             'education_backgrounds', 'contract_types', 'programs']

    array.each do |arr|
      populate.data[arr].each do |item|
        obj = "Support::Common::#{arr.singularize.camelize}".constantize.new(id: item['id'], name: item['name'])
        obj.save!
      end
    end
  end
  
end