require 'net/http'

namespace :populate_helpdesk do 
  task populate: :environment do 
    Rake::Task["populate_helpdesk:situation_types"].invoke
    Rake::Task["populate_helpdesk:locations"].invoke
    Rake::Task["populate_helpdesk:types"].invoke
    Rake::Task["populate_helpdesk:type_subjects"].invoke

    p 'Helpdesk populado.'
  end

  task situation_types: :environment do 
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/extranet/helpdesk/populate.json").read)
    
    populate['situation_types'].each do |type|
      object = Support::Helpdesk::TicketSituationType.new
      object.name                = type['name']
      object.status              = type['status']
      object.save(validate: false)
    end
  end

  task locations: :environment do 
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/extranet/helpdesk/populate.json").read)
    
    populate['locations'].each do |type|
      object = Support::Helpdesk::TicketLocation.new
      object.name                = type['name']
      object.status              = type['status']
      object.save(validate: false)
    end
  end

  task types: :environment do 
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/extranet/helpdesk/populate.json").read)
    
    populate['types'].each do |type|
      object = Support::Helpdesk::TicketType.new
      object.name                = type['name']
      object.status              = type['status']
      object.save(validate: false)
    end
  end

  task type_subjects: :environment do 
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/extranet/helpdesk/populate.json").read)
    
    populate['type_subjects'].each do |type|
      object = Support::Helpdesk::TicketTypeSubject.new
      object.ticket_type_id      = type['ticket_type_id']
      object.name                = type['name']
      object.status              = type['status']
      object.save(validate: false)
    end
  end
end