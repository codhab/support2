require 'net/http'

namespace :populate_person do 
  task populate: :environment do 
    Rake::Task["populate_person:contract_type"].invoke
    Rake::Task["populate_person:sector"].invoke
    Rake::Task["populate_person:job"].invoke
    Rake::Task["populate_person:staff"].invoke
  end

  task cadastre: :environment do 
    populate = Support::HttpService.new('raw.githubusercontent.com', '/codhab/populate/master/sihab/entity/cadastre.json')

    populate.data['entity'].each do |sector|
      object = Support::Entity::Cadastre.new
      object.id     = sector['id']
      object.name   = sector['name']
      object.name   = sector['cnpj']
      object.acron  = sector['fantasy_name']
      object.telephone  = sector['telephone']
      object.telephone_optional  = sector['telephone_optional']
      object.acron  = sector['fantasy_name']
      object.save(validate: false)
    end
  end
end