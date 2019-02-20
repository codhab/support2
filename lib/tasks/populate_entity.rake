require 'net/http'

namespace :populate_entity do 
  task populate: :environment do 
    Rake::Task["populate_entity:cadastre"].invoke

    p 'Entity populado.'
  end

  task cadastre: :environment do 
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/sihab/entity/cadastre.json").read)
    
    populate['entity'].each do |entity|
      object = Support::Entity::Cadastre.new
      object.name                = entity['name']
      object.acron               = entity['acron']
      object.cnpj                = entity['cnpj']
      object.telephone           = entity['telephone']
      object.telephone_optional  = entity['telephone_optional']
      object.save(validate: false)
    end
  end
end