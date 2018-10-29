require 'net/http'

namespace :populate_candidate do
  task populate: :environment do
    Rake::Task["populate_candidate:candidate"].invoke
    Rake::Task["populate_candidate:candidate_mirror"].invoke
    Rake::Task["populate_candidate:situation_type"].invoke
    Rake::Task["populate_candidate:procedural_type"].invoke
    Rake::Task["populate_candidate:program"].invoke
  end

  task program: :environment do
    populate = JSON.parse(File.open('../files/sihab/candidate/programs.json').read)

    populate.data['situations'].each do |situation_type|
      object = Support::Candidate::Program.new
      object.id     = situation_type['id']
      object.name   = situation_type['name']
      object.save(validate: false)
    end
  end
  

  task situation_type: :environment do
    populate = JSON.parse(File.open('../files/sihab/candidate/situation_types.json').read)

    populate.data['situations'].each do |situation_type|
      object = Support::Candidate::SituationType.new
      object.id     = situation_type['id']
      object.name   = situation_type['name']
      object.save(validate: false)
    end
  end
  

  task procedural_type: :environment do
    populate = JSON.parse(File.open('../files/sihab/candidate/procedural_types.json').read)

    populate.data['procedurals'].each do |procedural_type|
      object = Support::Candidate::ProceduralType.new
      object.id     = procedural_type['id']
      object.name   = procedural_type['name']
      object.status = procedural_type['status']
      object.save(validate: false)
    end
  end

  task candidate: :environment do
    object = Support::Candidate::Cadastre.new
    object.id = 1
    object.name = 'Fulano de Tal'
    object.cpf = '13615303083'
    object.arrival_df = Date.parse('2001-01-10')
    object.born = Date.parse('1984-03-23')
    object.family_income = '100'
    object.special_condition = false
    object.save(validate: false)
  end

  task candidate_mirror: :environment do
    object = Support::Candidate::CadastreMirror.new
    object.cadastre_id = 1
    object.name = 'Fulano de Tal'
    object.cpf = '13615303083'
    object.arrival_df = Date.parse('2001-01-10')
    object.born = Date.parse('1984-03-23')
    object.family_income = '100'
    object.special_condition = false
    object.save(validate: false)
  end
end 