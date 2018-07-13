namespace :db do
  namespace :schema do
    task create: :environment do
      %w[extranet sihab portal generic common].each do |schema|
        sql = %(CREATE SCHEMA #{schema})
        ActiveRecord::Base.connection.execute sql
      end

      sql = %(CREATE EXTENSION "uuid-ossp")
      ActiveRecord::Base.connection.execute sql
    end
  end

  task reload: :environment do 
  end

  task populate: :environment do 
  end
end