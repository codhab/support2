require 'net/http'

namespace :populate_common do
  task populate: :environment do
    Rake::Task["populate_common:state_and_city"].invoke
    Rake::Task["populate_common:shared_tables"].invoke
    Rake::Task["populate_common:subject"].invoke
    Rake::Task["populate_common:document_type"].invoke
    Rake::Task["populate_common:cpl_document_type"].invoke
    Rake::Task["populate_common:notice"].invoke
    Rake::Task["populate_common:participant"].invoke
    Rake::Task["populate_common:assessment"].invoke
    Rake::Task["populate_common:address_unit"].invoke

    p 'Common populado.'
  end

  task state_and_city: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/common/state_and_cities.json").read)

    populate.each do |state|
      state_obj = Support::Common::State.new(acronym: state['acronym'],name: state['name'])
      state_obj.save
      state['cities'].each do |city|
        c = Support::Common::City.new
        c.name = city['name']
        c.state_id = state_obj.id
        c.capital = (city['name'] == state['capital'])
        c.save
      end
    end
  end

  task subject: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/extranet/protocol/subject.json").read)

    populate['subjects'].each do |subject|
      object = Support::Protocol::Subject.new
      object.id     = subject['id']
      object.name   = subject['name']
      object.status = subject['status']
      object.save(validate: false)
    end
  end

  task document_type: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/extranet/protocol/document_type.json").read)

    populate['document_types'].each do |document_type|
      object = Support::Protocol::DocumentType.new
      object.id     = document_type['id']
      object.name   = document_type['name']
      object.status = document_type['status']
      object.save(validate: false)
    end
  end


  task assessment: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/extranet/protocol/assessment.json").read)

    populate['assessments'].each do |assessment|
      state_obj = Support::Protocol::Assessment.new
      state_obj.id               = assessment['id']
      state_obj.number           = assessment['number']
      state_obj.year             = assessment['year']
      state_obj.prefex           = assessment['prefex']
      state_obj.document_number  = assessment['document_number']
      state_obj.recipient        = assessment['recipient']
      state_obj.cpf              = assessment['cpf']
      state_obj.cnpj             = assessment['cnpj']
      state_obj.document_type_id = assessment['document_type_id']
      state_obj.subject_id       = assessment['subject_id']
      state_obj.user_id          = assessment['staff_id']
      state_obj.sector_id        = assessment['sector_id']
      state_obj.observation      = assessment['observation']
      state_obj.save(validate: false)
      assessment['conducts'].each do |conduct|
        c = Support::Protocol::Conduct.new
        c.assessment_id = conduct['assessment_id']
        c.user_id   = conduct['staff_id']
        c.sector_id = conduct['sector_id']
        c.conduct_type = conduct['conduct_type']
        c.save(validate: false)
      end
    end
  end

  task cpl_document_type: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/extranet/cpl/document_types.json").read)

    populate['document_types'].each do |document_type|
      object = Support::Cpl::DocumentType.new
      object.id     = document_type['id']
      object.name   = document_type['name']
      object.status = document_type['status']
      object.save(validate: false)
    end
  end

  task notice: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/extranet/cpl/notices.json").read)

    populate['notices'].each do |document_type|
      object = Support::Cpl::Notice.new
      object.name   = document_type['name']
      object.document_number = document_type['document_number']
      object.proposal_date = document_type['proposal_date']
      object.proposal_hour = document_type['proposal_hour']
      object.open_date = document_type['open_date']
      object.open_hour = document_type['open_hour']
      object.session_date = document_type['session_date']
      object.session_hour = document_type['session_hour']
      object.status = document_type['status']
      object.save(validate: false)
    end
  end

  task participant: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/extranet/cpl/participants.json").read)

    populate['participants'].each do |document_type|
      object = Support::Cpl::Participant.new
      object.name = document_type['name']
      object.cnpj = document_type['cnpj']
      object.email = document_type['email']
      object.status = document_type['status']
      object.save(validate: false)
    end
  end



  task address_unit: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/sihab/address/units.json").read)

    populate['address'].each do |unit|
      object = Support::Address::Unit.new
      object.id = unit['id']
      object.acron_block = unit['acron_block']
      object.block = unit['block']
      object.group = unit['group']
      object.unit = unit['unit']
      object.area = unit['area']
      object.complete_address = unit['complete_address']
      object.city_id = unit['city_id']
      object.iptu_number = unit['iptu_number']
      object.burgh = unit['burgh']
      object.unit_code = unit['unit_code']
      object.notary_office = unit['notary_office']
      object.declaratory_act_number = unit['declaratory_act_number']
      object.rejection_number = unit['rejection_number']
      object.save(validate: false)
    end
  end


  task shared_tables: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/common/shared_tables.json").read)

    array = ['civil_states', 'kinships', 'special_condition_types', 'genders', 'education_backgrounds', 'programs']

    array.each do |arr|
      populate[arr].each do |item|
        obj = "Support::Common::#{arr.singularize.camelize}".constantize.new(id: item['id'], name: item['name'])
        obj.save!
      end
    end
  end
end
