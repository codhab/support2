require 'net/http'

namespace :populate_attendance do
  task populate: :environment do
    Rake::Task["populate_attendance:document_types"].invoke
    Rake::Task["populate_attendance:ticket_categories"].invoke
    Rake::Task["populate_attendance:situation_types"].invoke
    Rake::Task["populate_attendance:categories"].invoke
    Rake::Task["populate_attendance:daily_types"].invoke
    Rake::Task["populate_attendance:daily_preferential_types"].invoke
    Rake::Task["populate_attendance:stations"].invoke

    puts "Attendance populate"
  end

  task situation_types: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/sihab/attendance/tickets.json").read)

    populate['situation_types'].each do |d|
      object = Support::Attendance::TicketSituationType.new
      object.id                     = d['id']
      object.name                   = d['name']
      object.code                   = d['code']
      object.status                 = d['status']
      object.label_view_candidate   = d['label_view_candidate']
      object.save(validate: false)
    end
  end

  
  task categories: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/sihab/attendance/categories.json").read)

    populate['categories'].each do |category|
      object = Support::Attendance::Category.new
      object.id                  = category['id']
      object.name                = category['name']
      object.status              = category['status']
      object.save(validate: false)
    end
  end

  
  task document_types: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/sihab/attendance/tickets.json").read)

    populate['document_types'].each do |d|
      object = Support::Attendance::DocumentType.new
      object.id               = d['id']
      object.code             = d['code']
      object.name             = d['name']
      object.introduction     = d['introduction']
      object.status           = d['status']
      object.sei_group_id     = d['sei_group_id']
      object.sei_tranning_id  = d['sei_tranning_id']
      object.sei_label        = d['sei_label']
      object.save(validate: false)
    end
  end


  task daily_types: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/sihab/attendance/daily_types.json").read)

    populate['daily_types'].each do |daily_type|
      object = Support::Attendance::DailyType.new
      object.id                  = daily_type['id']
      object.name                = daily_type['name']
      object.status              = daily_type['status']
      object.save(validate: false)
    end
  end


  task ticket_categories: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/sihab/attendance/tickets.json").read)
    
    populate['ticket_categories'].each do |c|
      object = Support::Attendance::TicketCategory.new

      object.name                   = c["name"]
      object.status                 = c["status"]
      object.unique                 = c["unique"]
      object.filter_situation       = c["filter_situation"]
      object.filter_situation_id    = c["filter_situation_id"] 
      object.filter_convocation     = c["filter_convocation"]
      object.filter_convocation_id  = c["filter_convocation_id"] 
      object.filter_program_id      = c["filter_program_id"] 

      object.save(validate: false)

      if c.has_key?('steps')
        c['steps'].each do |s|
          obj = Support::Attendance::TicketCategoryStep.new
          obj.name                = s["name"]
          obj.resume              = s["resume"]
          obj.view_form           = s["view_form"]
          obj.document_required   = s["document_required"]
          obj.step_required       = s["step_required"]
          obj.screen_order        = s["screen_order"]
          obj.allow_confirmation  = s["allow_confirmation"]
          obj.status              = s["status"]

          obj.ticket_category_id  = object.id

          obj.save(validate: false)

          if s.has_key?('step_documents')
            s['step_documents'].each do |sd|
              obje = Support::Attendance::StepDocument.new
              obje.category_step_id  = obj.id
              obje.document_type_id  = sd["document_type_id"]
              
              obje.save(validate: false)
            end
          end 
      
        end
      end

    end
  end

  task daily_preferential_types: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/sihab/attendance/daily_preferential_types.json").read)

    populate['daily_preferential_types'].each do |daily_preferential_type|
      object = Support::Attendance::DailyPreferentialType.new
      object.id                  = daily_preferential_type['id']
      object.name                = daily_preferential_type['name']
      object.status              = daily_preferential_type['status']
      object.save(validate: false)
    end
  end

  task stations: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/sihab/attendance/stations.json").read)

    populate['stations'].each do |staion|
      object = Support::Attendance::Station.new
      object.id               = staion['id']
      object.name             = staion['name']
      object.status           = staion['status']
      object.description      = staion['description']
      object.lat              = staion['latitude']
      object.lng              = staion['longitude']
      object.save(validate: false)
    end
  end

end