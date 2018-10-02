require 'net/http'

namespace :populate_entity do 
  task populate: :environment do 
    Rake::Task["populate_entity:cadastre"].invoke

    p 'Entity populado.'
  end

  task cadastre: :environment do 
    populate = Support::HttpService.new('raw.githubusercontent.com', '/codhab/populate/master/sihab/entity/cadastre.json')

    populate.data['entity'].each do |sector|
      object = Support::Entity::Cadastre.new
      object.name                = sector['name']
      object.fantasy_name        = sector['fantasy_name']
      object.cnpj                = sector['cnpj']
      object.telephone           = sector['telephone']
      object.telephone_optional  = sector['telephone_optional']
      object.save(validate: false)
    end
  end
end