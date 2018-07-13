namespace :populate_common do 
  task populate: :environment do 
    http = Net::HTTP.new('raw.githubusercontent.com', 443)
    http.use_ssl = true

    populate = JSON.parse http.get('/codhab/populate/master/state_and_cities.json').body
    
    populate.each do |state|
      state_obj = Support::Common::State.new(
        acronym: state['acronym'],
        name: state['name']
      )
      state_obj.save

      state['cities'].each do |city|
        c = SupportCodhab::Common::City.new
        c.name = city['name']
        c.state_id = state_obj.id
        c.capital = (city['name'] == state['capital'])
        c.save
      end
    end

  end 
end