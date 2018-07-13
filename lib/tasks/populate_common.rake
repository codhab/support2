require 'net/http'

namespace :populate_common do 
  task populate: :environment do 
    Rake::Task["populate_common:state_and_city"].invoke
  end

  task state_and_city: :environment do 
    populate = Support::HttpService.new('raw.githubusercontent.com', '/codhab/populate/master/common/state_and_cities.json')

    populate.data.each do |state|
      state_obj = Support::Common::State.new(acronym: state['acronym'],name: state['name']).save
      state['cities'].each do |city|
        c = Support::Common::City.new
        c.name = city['name']
        c.state_id = state_obj.id
        c.capital = (city['name'] == state['capital'])
        c.save
      end
    end
  end 
  
end