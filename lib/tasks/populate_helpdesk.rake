require 'net/http'

namespace :populate_helpdesk do 
  task populate: :environment do 
    Rake::Task["populate_helpdesk:situation_types"].invoke

    p 'Helpdesk populado.'
  end

  task situation_types: :environment do 
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/extranet/helpdesk/situation_types.json").read)
    
    populate['situation_types'].each do |type|
      object = Support::Helpdesk::TicketSituationType.new
      object.name                = type['name']
      object.status              = type['status']
      object.save(validate: false)
    end
  end
end