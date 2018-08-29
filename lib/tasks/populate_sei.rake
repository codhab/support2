require 'net/http'

namespace :populate_sei do

  task populate: :environment do 
    Rake::Task['populate_sei:procedure_types'].invoke
    Rake::Task['populate_sei:document_subjects'].invoke
    Rake::Task['populate_sei:units'].invoke

    p 'Sei populado.'
  end

  task procedure_types: :environment do 
    populate = Support::HttpService.new('raw.githubusercontent.com', '/codhab/populate/master/extranet/sei/procedure_types.json')
    populate.data["types"].each do |row|
      object = Sei::ProcedureType.new 
      object.name            = row['name'] 
      object.sei_tranning_id = row['sei_tranning_id'] 
      object.save(validate: false) 
    end
  end
  
  task document_subjects: :environment do 
    populate = Support::HttpService.new('raw.githubusercontent.com', '/codhab/populate/master/extranet/sei/document_subjects.json')
    populate.data["subjects"].each do |row|
      object = Support::Sei::DocumentSubject.new
      object.name            = row['name']
      object.sei_tranning_id = row['sei_tranning_id']
      object.save(validate: false) 
    end 
  end
  
  task units: :environment do 
  populate = Support::HttpService.new('raw.githubusercontent.com', '/codhab/populate/master/extranet/sei/units.json')
    populate.data["units"].each do |row|
      object = Support::Sei::Unit.new
      object.name            = row['name']
      object.sei_tranning_id = row['sei_tranning_id']
      object.save(validate: false) 
    end
  end
  
  task units: :environment do 
    populate = Support::HttpService.new('raw.githubusercontent.com', '/codhab/populate/master/extranet/sei/legal_hypotheses.json')
    populate.data["legals"].each do |row|
      object = Support::Sei::LegalHypothesis.new
      object.code            = row['code']
      object.name            = row['name']
      object.sei_tranning_id = row['sei_tranning_id']
      object.save(validate: false) 
    end
  end
  
end