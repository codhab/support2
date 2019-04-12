require 'net/http'

namespace :migrate_address do
  task populate: :environment do
    Rake::Task["migrate_address:enterprise"].invoke
    Rake::Task["migrate_address:company"].invoke
    Rake::Task["migrate_address:company_user"].invoke
    Rake::Task["migrate_address:enterprise_typology"].invoke
    Rake::Task["migrate_address:registry_type"].invoke
    Rake::Task["migrate_address:situation_type"].invoke
    Rake::Task["migrate_address:state"].invoke
    Rake::Task["migrate_address:city"].invoke

    p 'Address populado.'
  end

  task enterprise: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/sihab/address/address_enterprises.json").read)

    populate.each do |state|
      state_obj = Support::Address::Enterprise.new(
        name: state['name'],
        company_id: state['company_id'],
        entity_id: state['entity_id'],
        entity: state['entity_id'] != nil ? true : false,
        status: state['status'],
        number_document: state['number_document'],
        number_assessment: state['number_assessment'],
        manifestation_allow: state['manifestation_allow'],
        web_url: state['web_url'],
        unit_quantity: state['unit_quantity'],
        value: state['value'],
        created_at: state['created_at'],
        updated_at: state['updated_at'],
        id: state['id']
       )
      state_obj.save
    end
  end

  task company: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/sihab/address/enterprise_companies.json").read)

    populate.each do |state|
      state_obj = Support::Address::EnterpriseCompany.new(
        name: state['name'],
        fantasy_name: state['fantasy_name'],
        cnpj: state['cnpj'],
        status: state['status'],
        telephone: state['telephone'],
        email: state['email'],
        address: state['address'],
        city_id: state['city_id'],
        created_at: state['created_at'],
        updated_at: state['updated_at'],
        id: state['id']
       )
      state_obj.save
    end
  end

  task company_user: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/sihab/address/enterprise_company_users.json").read)

    populate.each do |state|
      state_obj = Support::Address::EnterpriseCompanyUser.new(
        name: state['name'],
        enterprise_company_id: state['enterprise_company_id'],
        administrator: state['administrator'],
        password: state['password'],
        email: state['email'],
        status: state['status'],
        created_at: state['created_at'],
        updated_at: state['updated_at'],
        id: state['id']
       )
      state_obj.save
    end
  end

  task enterprise_typology: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/sihab/address/enterprise_typologies.json").read)

    populate.each do |state|
      state_obj = Support::Address::EnterpriseTypology.new(
        enterprise_id: state['enterprise_id'],
        unit_quantity: state['unit_quantity'],
        name: state['name'],
        description: state['description'],
        home_type: state['home_type'],
        private_area: state['private_area'],
        status: state['status'],
        value_start: state['value_start'],
        value_end: state['value_end'],
        value_general: state['value_general'],
        created_at: state['created_at'],
        updated_at: state['updated_at'],
        id: state['id']
       )
      state_obj.save
    end
  end

  task registry_type: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/sihab/address/registry_types.json").read)

    populate['registry_types'].each do |state|
      state_obj = Support::Address::RegistryType.new(
        name: state['name'],
        id: state['id']
       )
      state_obj.save
    end
  end

  task situation_type: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/sihab/address/situation_types.json").read)

    populate['situation_types'].each do |state|
      state_obj = Support::Address::UnitSituationType.new(
        name: state['name'],
        id: state['id']
       )
      state_obj.save
    end
  end

  task state: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/common/states.json").read)

    populate.each do |state|
      state_obj = Support::Common::State.new(
        name: state['name'],
        acronym: state['acronym'],
        id: state['id']
       )
      state_obj.save
    end
  end
  task city: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/common/cities.json").read)

    populate.each do |state|
      state_obj = Support::Common::City.new(
        capital: state['capital'],
        state_id: state['state_id'],
        lat: state['lat'],
        lng: state['lng'],
        name: state['name'],
        id: state['id']
       )
      state_obj.save
    end
  end
end
