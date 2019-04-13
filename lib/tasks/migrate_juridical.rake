require 'net/http'
require 'csv'

namespace :migrate_juridical do
  task populate: :environment do
    Rake::Task["migrate_juridical:instacy"].invoke
    Rake::Task["migrate_juridical:instacy_place"].invoke
    Rake::Task["migrate_juridical:lawsuit"].invoke
    Rake::Task["migrate_juridical:defendant"].invoke
    Rake::Task["migrate_juridical:complainant"].invoke
    Rake::Task["migrate_juridical:legal_advice"].invoke

    p 'Jurical populado'
  end

  task instacy: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/extranet/juridical/instancies.json").read)

    populate.each do |subject|
      object = Support::Juridical::Instancy.new
      object.id     = subject['id']
      object.name   = subject['name']
      object.status = subject['status']
      object.save(validate: false)
    end
  end

  task instacy_place: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/extranet/juridical/instancy_places.json").read)

    populate.each do |subject|
      object = Support::Juridical::InstancyPlace.new
      object.id     = subject['id']
      object.name   = subject['name']
      object.instancy_id   = subject['instancy_id']
      object.status = subject['status']
      object.save(validate: false)
    end
  end

  task lawsuit: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/extranet/juridical/lawsuits.json").read)

    populate.each do |subject|
      object = Support::Juridical::Lawsuit.new
      object.id     = subject['id']
      object.name   = subject['name']
      object.status = subject['status']
      object.save(validate: false)
    end
  end

  task defendant: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/extranet/juridical/defendants.json").read)

    populate.each do |subject|
      object = Support::Juridical::Defendant.new
      object.id     = subject['id']
      object.name   = subject['name']
      object.user_id   = subject['staff_id']
      object.legal_advice_id = subject['legal_advice_id']
      object.created_at = subject['created_at']
      object.updated_at = subject['updated_at']
      object.save(validate: false)
    end
  end

  task complainant: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/extranet/juridical/complainants.json").read)

    populate.each do |subject|
      object = Support::Juridical::Complainant.new
      object.id     = subject['id']
      object.name   = subject['name']
      object.user_id   = subject['staff_id']
      object.legal_advice_id = subject['legal_advice_id']
      object.created_at = subject['created_at']
      object.updated_at = subject['updated_at']
      object.save(validate: false)
    end
  end

  task legal_advice: :environment do
    CSV.foreach("#{Support::Engine.root}/lib/files/extranet/juridical/juridical_legal_advices.csv",  { col_sep: ';', headers: false }) do |row|
      object = Support::Juridical::LegalAdvice.new(
        id: row[0],
        process_number: row[1],
        agency: row[2],
        lawsuit_id: row[3],
        lawsuit_value: row[4],
        instancy_place_id: row[5],
        document_type_id: row[6],
        responsible_lawyer_id: row[7],
        process_type: row[9],
        condemnation_value: row[12],
        assessment_number: row[13],
        user_id: row[14],
        advice_type_id: row[15],
        free_justice: row[18],
        veredict: row[11],
        probability: row[19],
        procedural_costs: row[20],
        judicial_deposit: row[21],
        created_at: row[16],
        updated_at: row[17],
        status: row[8]
      )
      object.save(validate: false)
    end
  end

end
