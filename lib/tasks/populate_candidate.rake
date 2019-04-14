require 'net/http'

namespace :populate_candidate do
  task populate: :environment do
    #Rake::Task["populate_candidate:candidate"].invoke
    #Rake::Task["populate_candidate:candidate_mirror"].invoke

    #Rake::Task["populate_candidate:situation_type"].invoke
    #Rake::Task["populate_candidate:procedural_type"].invoke
    #Rake::Task["populate_candidate:program"].invoke

    p 'Candidate populado.'

  end

  task program: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/sihab/candidate/programs.json").read)

    populate['programs'].each do |program|
      object = Support::Candidate::Program.new
      object.id     = program['id']
      object.name   = program['name']
      object.save(validate: false)
    end
  end


  task situation_type: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/sihab/candidate/situation_types.json").read)

    populate.each do |situation_type|
      object = Support::Candidate::SituationType.new
      object.id     = situation_type['id']
      object.name   = situation_type['name']
      object.program_id   = situation_type['program_id']
      object.save(validate: false)
    end
  end


  task procedural_type: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/sihab/candidate/procedural_types.json").read)

    populate['procedurals'].each do |procedural_type|
      object = Support::Candidate::ProceduralType.new
      object.id     = procedural_type['id']
      object.name   = procedural_type['name']
      object.status = procedural_type['status']
      object.save(validate: false)
    end
  end

  task candidate: :environment do
    object = Support::Candidate::Cadastre.new
    object.name = 'Fulano de Tal'
    object.cpf = '13615303083'
    object.arrival_df = Date.parse('2001-01-10')
    object.born = Date.parse('1984-03-23')
    object.family_income = '100'
    object.special_condition = false
    object.save(validate: false)

    object1 = Support::Candidate::Cadastre.new
    object1.name = 'Siclano de Tal'
    object1.cpf = '71263063187'
    object1.arrival_df = Date.parse('2000-01-10')
    object1.born = Date.parse('1984-03-23')
    object1.family_income = '100'
    object1.special_condition = false
    object1.save(validate: false)

    object2 = Support::Candidate::CadastreProcedural.new
    object2.procedural_type_id = 14
    object2.process_number = '2313132132131312'
    object2.cadastre_convocation_id = 2
    object2.user_id = 1
    object2.observation = 'Teste'
    object2.save(validate: false)
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
