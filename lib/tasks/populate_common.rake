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
  end

  task state_and_city: :environment do
    populate = Support::HttpService.new('raw.githubusercontent.com', '/codhab/populate/master/common/state_and_cities.json')

    populate.data.each do |state|
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
    populate = Support::HttpService.new('raw.githubusercontent.com', '/codhab/populate/master/extranet/protocol/subject.json')

    populate.data['subjects'].each do |subject|
      object = Support::Protocol::Subject.new
      object.id     = subject['id']
      object.name   = subject['name']
      object.status = subject['status']
      object.save(validate: false)
    end
  end

  task document_type: :environment do
    populate = Support::HttpService.new('raw.githubusercontent.com', '/codhab/populate/master/extranet/protocol/document_type.json')

    populate.data['document_types'].each do |document_type|
      object = Support::Protocol::DocumentType.new
      object.id     = document_type['id']
      object.name   = document_type['name']
      object.status = document_type['status']
      object.save(validate: false)
    end
  end

  task assessment: :environment do
    populate = Support::HttpService.new('raw.githubusercontent.com', '/codhab/populate/master/extranet/protocol/assessment.json')

    populate.data['assessments'].each do |assessment|
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
      state_obj.staff_id         = assessment['staff_id']
      state_obj.sector_id        = assessment['sector_id']
      state_obj.observation      = assessment['observation']
      state_obj.save(validate: false)
      assessment['conducts'].each do |conduct|
        c = Support::Protocol::Conduct.new
        c.assessment_id = conduct['assessment_id']
        c.staff_id = conduct['staff_id']
        c.sector_id = conduct['sector_id']
        c.conduct_type = conduct['conduct_type']
        c.save(validate: false)
      end
    end
  end

  task cpl_document_type: :environment do
    populate = Support::HttpService.new('raw.githubusercontent.com', '/codhab/populate/master/extranet/cpl/document_types.json')

    populate.data['document_types'].each do |document_type|
      object = Support::Cpl::DocumentType.new
      object.id     = document_type['id']
      object.name   = document_type['name']
      object.status = document_type['status']
      object.save(validate: false)
    end
  end

  task notice: :environment do
    populate = Support::HttpService.new('raw.githubusercontent.com', '/codhab/populate/master/extranet/cpl/notices.json')

    populate.data['notices'].each do |document_type|
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
    populate = Support::HttpService.new('raw.githubusercontent.com', '/codhab/populate/master/extranet/cpl/participants.json')

    populate.data['participants'].each do |document_type|
      object = Support::Cpl::Participant.new
      object.name = document_type['name']
      object.cnpj = document_type['cnpj']
      object.email = document_type['email']
      object.status = document_type['status']
      object.save(validate: false)
    end
  end

  task shared_tables: :environment do
    populate = Support::HttpService.new('raw.githubusercontent.com', '/codhab/populate/master/common/shared_tables.json')

    array = ['civil_states', 'kinships', 'special_condition_types', 'genders', 'education_backgrounds', 'programs']

    array.each do |arr|
      populate.data[arr].each do |item|
        obj = "Support::Common::#{arr.singularize.camelize}".constantize.new(id: item['id'], name: item['name'])
        obj.save!
      end
    end
  end
end
