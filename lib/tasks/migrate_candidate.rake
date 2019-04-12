require 'net/http'

namespace :migrate_candidate do
  task populate: :environment do
    Rake::Task["migrate_candidate:activity_type"].invoke
    Rake::Task["migrate_candidate:convocation"].invoke
    Rake::Task["migrate_candidate:procedural_type"].invoke
    Rake::Task["migrate_candidate:program"].invoke
    Rake::Task["migrate_candidate:situation_type"].invoke
    Rake::Task["migrate_candidate:indication_activity_type"].invoke

    p 'Address populado.'
  end

  task activity_type: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/sihab/candidate/activity_types.json").read)

    populate['situations'].each do |state|
      state_obj = Support::Candidate::ActivityType.new(
        name: state['name'],
        id: state['id']
       )
      state_obj.save
    end
  end

  task convocation: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/sihab/candidate/convocations.json").read)

    populate.each do |state|
      state_obj = Support::Candidate::Convocation.new(
        description: state['description'],
        start_date: state['date_start'],
        end_date: state['date_end'],
        quantity: state['quantity'],
        justify: state['criteria'],
        status: state['status'],
        program_id: state['program_id'],
        id: state['id']
       )
      state_obj.save
    end
  end

  task procedural_type: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/sihab/candidate/procedural_types.json").read)

    populate['procedurals'].each do |state|
      state_obj = Support::Candidate::ProceduralType.new(
        name: state['name'],
        status: state['status'],
        id: state['id']
       )
      state_obj.save
    end
  end

  task program: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/sihab/candidate/programs.json").read)

    populate['programs'].each do |state|
      state_obj = Support::Candidate::Program.new(
        name: state['name'],
        description: state['description'],
        status: state['status'],
        created_at: state['created_at'],
        updated_at: state['updated_at'],
        id: state['id']
       )
      state_obj.save
    end
  end

  task situation_type: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/sihab/candidate/situation_types.json").read)

    populate['situations'].each do |state|
      state_obj = Support::Candidate::SituationType.new(
        name: state['name'],
        id: state['id']
       )
      state_obj.save
    end
  end

  task indication_activity_type: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/sihab/candidate/indication_activity_types.json").read)

    populate.each do |state|
      state_obj = Support::Candidate::SituationType.new(
        name: state['name'],
        description: state['description'],
        waiver: state['waiver'],
        created_at: state['created_at'],
        updated_at: state['updated_at'],
        id: state['id']
       )
      state_obj.save
    end
  end
end
