require 'net/http'
require 'csv'

namespace :migrate_sefaz do
  task populate: :environment do
    Rake::Task["migrate_sefaz:exemption_type"].invoke
    Rake::Task["migrate_sefaz:notifier"].invoke
    Rake::Task["migrate_sefaz:request_situation"].invoke
    Rake::Task["migrate_sefaz:request_type"].invoke

    p 'Sefaz populado.'
  end

  task populate_full: :environment do
    Rake::Task["migrate_sefaz:exemption_type"].invoke
    Rake::Task["migrate_sefaz:notifier"].invoke
    Rake::Task["migrate_sefaz:request_situation"].invoke
    Rake::Task["migrate_sefaz:request_type"].invoke
    Rake::Task["migrate_sefaz:allotment"].invoke
    Rake::Task["migrate_sefaz:exemption"].invoke

    p 'Sefaz full populado.'
  end

  task exemption_type: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/extranet/sefaz/exemption_types.json").read)

    populate['exemption_types'].each do |state|
      state_obj = Support::Sefaz::ExemptionType.new(
        id: state['id'],
        name: state['name'],
        status: state['status']
       )
      state_obj.save
    end
  end

  task notifier: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/extranet/sefaz/notifiers.json").read)

    populate['notifiers'].each do |state|
      state_obj = Support::Sefaz::Notifier.new(
        id: state['id'],
        name: state['name'],
        cnpj: state['cnpj'],
        status: state['status']
       )
      state_obj.save
    end
  end

  task request_situation: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/extranet/sefaz/request_situations.json").read)

    populate['request_situation'].each do |state|
      state_obj = Support::Sefaz::RequestSituation.new(
        id: state['id'],
        name: state['name'],
        status: state['status']
       )
      state_obj.save
    end
  end

  task request_type: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/extranet/sefaz/request_types.json").read)

    populate['request_types'].each do |state|
      state_obj = Support::Sefaz::RequestType.new(
        id: state['id'],
        name: state['name'],
        status: state['status']
       )
      state_obj.save
    end
  end

  task allotment: :environment do
    CSV.foreach("#{Support::Engine.root}/lib/files/extranet/sefaz/sefaz_allotments.csv",  { col_sep: ';', headers: false }) do |row|
      state_obj = Support::Sefaz::Allotment.new(
        id: row[0],
        user_id: row[1],
        protocol_return: row[5],
        exemption_type_id: row[6],
        notifier_id: row[7],
        observation: row[8],
        request_situation_id: row[9],
        request_type_id: row[10],
        send_date:  row[3],
        send_staff_id: row[4],
        created_at: row[11],
        updated_at: row[12]
       )
      state_obj.save
    end
  end

  task exemption: :environment do
    sql = %(insert into extranet.sefaz_exemptions(id, name, cpf, city, address, realty_number, realty_value, allotment_id,
                        act_number, canceled, canceled_date, canceled_user_id, return_message,
                        user_id, system_message, number_act_cancel, year_act_cancel, created_at, updated_at)
            SELECT *
                FROM sihab.dblink('host=10.233.38.16 port=5432 user=postgres dbname=codhab_production',
                                     'select id, name, cpf, city, address, realty_number, realty_value, allotment_id,
                                        act_number, canceled, canceled_date, canceled_staff_id, return_message, staff_id, system_message, number_act_to_cancel,
                                        year_act, created_at, updated_at  from extranet.sefaz_exemptions')
                  AS sefaz_exemptions( id integer, name varchar, cpf varchar, city varchar, address varchar, realty_number varchar, realty_value varchar, allotment_id integer,
                                       act_number varchar, canceled boolean, canceled_date timestamp, canceled_staff_id integer, return_message text,
                                       staff_id integer, system_message varchar, number_act_to_cancel varchar, year_act integer,
                                       created_at timestamp, updated_at timestamp))

    ActiveRecord::Base.connection.execute sql
  end
end
