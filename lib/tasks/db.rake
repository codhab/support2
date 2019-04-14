namespace :db do
  namespace :schema do
    task create: :environment do
      %w[extranet sihab portal generic common].each do |schema|
        sql = %(CREATE SCHEMA IF NOT EXISTS #{schema})
        ActiveRecord::Base.connection.execute sql
      end

      sql = %(CREATE EXTENSION IF NOT EXISTS "uuid-ossp")
      ActiveRecord::Base.connection.execute sql

      sql1 = %(CREATE EXTENSION dblink SCHEMA sihab;)
      ActiveRecord::Base.connection.execute sql1
    end
  end

  task reload: :environment do
    #system('rails db:environment:set RAILS_ENV=development')

    Rake::Task["db:drop"].invoke
    Rake::Task["db:create"].invoke
    Rake::Task["db:schema:create"].invoke
    Rake::Task["db:migrate"].invoke
  end

  task populate: :environment do
    Rake::Task['populate_attendance:populate'].invoke
    Rake::Task['populate_common:populate'].invoke
    Rake::Task['populate_pivotal:populate'].invoke
    Rake::Task['populate_entity:populate'].invoke
    Rake::Task['populate_helpdesk:populate'].invoke
    Rake::Task['populate_cms:populate'].invoke
    Rake::Task['migrate_address:populate'].invoke
    Rake::Task['migrate_candidate:populate'].invoke
    Rake::Task['migrate_sefaz:populate'].invoke
    Rake::Task['migrate_juridical:populate'].invoke
  end

  task populate_full: :environment do

    Rake::Task['populate_candidate:populate'].invoke
    Rake::Task['populate_attendance:populate'].invoke
    Rake::Task['populate_common:populate'].invoke
    Rake::Task['populate_entity:populate'].invoke
    Rake::Task['populate_helpdesk:populate'].invoke
    Rake::Task['populate_cms:populate'].invoke
    Rake::Task['migrate_address:populate_full'].invoke
    Rake::Task['migrate_brb:populate'].invoke
    Rake::Task['migrate_candidate:populate'].invoke
    Rake::Task['migrate_pivotal:populate'].invoke
    Rake::Task['migrate_sefaz:populate_full'].invoke
    Rake::Task['migrate_juridical:populate_full'].invoke
  end

end
