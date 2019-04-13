require 'net/http'
require 'csv'

namespace :migrate_sefaz do
  task populate: :environment do
    Rake::Task["migrate_sefaz:exemption_type"].invoke
    Rake::Task["migrate_sefaz:notifier"].invoke
    Rake::Task["migrate_sefaz:request_situation"].invoke
    Rake::Task["migrate_sefaz:request_type"].invoke
    Rake::Task["migrate_sefaz:allotment"].invoke

    p 'Sefaz populado.'
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
end
