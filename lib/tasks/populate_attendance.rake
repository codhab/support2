require 'net/http'

namespace :populate_attendance do
  task populate: :environment do
    Rake::Task["populate_attendance:categories"].invoke
    Rake::Task["populate_attendance:daily_types"].invoke
    Rake::Task["populate_attendance:daily_preferential_types"].invoke
    Rake::Task["populate_attendance:stations"].invoke
    p 'Attendance populado.'
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