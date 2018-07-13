namespace :db do
  namespace :schema do
    task create: :environment do
      %w[extranet sihab portal generic common].each do |schema|
        sql = %(CREATE SCHEMA IF NOT EXISTS #{schema})
        ActiveRecord::Base.connection.execute sql
      end

      sql = %(CREATE EXTENSION IF NOT EXISTS "uuid-ossp")
      ActiveRecord::Base.connection.execute sql
    end
  end

  task reload: :environment do
    Rake::Task["db:drop"].invoke
    Rake::Task["db:create"].invoke
    Rake::Task["db:schema:create"].invoke
    Rake::Task["db:migrate"].invoke
  end

  task populate: :environment do 
  end
end