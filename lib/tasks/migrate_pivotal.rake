namespace :migrate_pivotal do
  task populate: :environment do
    Rake::Task["migrate_pivotal:user"].invoke
    Rake::Task["migrate_pivotal:update_password"].invoke

    p 'Pivotal populado.'
  end

  task user: :environment do
    sql = %(insert into extranet.pivotal_users(id, username, name, cpf, born, gender_id, avatar,
                                   curriculum, email, private_email, status, administrator,
                                   password, job_id, civil_state_id, birth_place, telephone, celphone,
                                   sector_id, created_at, updated_at)
    SELECT * FROM sihab.dblink('host=10.233.38.16 port=5432 user=postgres dbname=codhab_production',
                         'select id, code, name, cpf, born, gender, avatar, curriculum, email, private_email, status,
                          administrator, password, job_id, civil_state_id, birth_place, telephone, celphone, sector_current_id,
                          created_at, updated_at  from extranet.person_staffs')
      AS person_staffs( id integer, code varchar, name varchar, cpf varchar, born date, gender integer, avatar varchar, curriculum varchar,
                        email varchar, private_email varchar, status boolean, administrator boolean, password varchar, job_id integer, civil_state_id integer,
                        birth_place varchar, telephone varchar, celphone varchar, sector_current_id integer,
                           created_at timestamp, updated_at timestamp)
      )

    ActiveRecord::Base.connection.execute sql
  end

  task update_password: :environment do

    @users = Support::Pivotal::User.all

    @users.each do |user|
      user.password = user.password
      user.code     = user.username
      user.save
    end

  end
end
