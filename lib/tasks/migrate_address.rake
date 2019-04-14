require 'net/http'

namespace :migrate_address do
  task populate: :environment do
    Rake::Task["migrate_address:registry_type"].invoke
    Rake::Task["migrate_address:situation_type"].invoke
    Rake::Task["migrate_address:state"].invoke
    Rake::Task["migrate_address:city"].invoke

    p 'Address populado.'
  end

  task populate_full: :environment do
    Rake::Task["migrate_address:enterprise"].invoke
    Rake::Task["migrate_address:company"].invoke
    Rake::Task["migrate_address:company_user"].invoke
    Rake::Task["migrate_address:enterprise_typology"].invoke
    Rake::Task["migrate_address:registry_type"].invoke
    Rake::Task["migrate_address:situation_type"].invoke
    Rake::Task["migrate_address:state"].invoke
    Rake::Task["migrate_address:city"].invoke
    Rake::Task["migrate_address:unit"].invoke
    Rake::Task["migrate_address:unit_situation"].invoke
    Rake::Task["migrate_address:unit_registry"].invoke

    p 'Address full populado.'
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

  task unit: :environment do
    sql = %(insert into sihab.address_units(id, acron_block, block, acron_group, "group", acron_unit, unit,
                   complete_address, cep, area, burgh, donate, iptu_number,
                   city_id, control_number, lat, lng,
                   no_exemption, area_front, area_back, area_right, area_left, limit_front,
                   limit_back, limit_right, limit_left, sefaz_certificate, sefaz_certificate_date,
                   sefaz_certificate_validate_date, enterprise_typology_id, unit_code,
                   notary_office, contract_date, code_date, contract_office, petition_date,
                   signature_date, anoreg_date, devolution_date, requirement, requirement_date,
                   declaratory_act_number, declaratory_act_date, rejection_number,
                   rejection_date, endorsement, urbanistic_project, created_at,
                   updated_at)
            SELECT *
               FROM sihab.dblink('host=10.233.38.16 port=5432 user=postgres dbname=codhab_production',
                          'with notarys as (select * from extranet.address_notary_offices notarys1
                           where (notarys1.id in (select notarys2.id from extranet.address_notary_offices notarys2
                                              where notarys1.unit_id = notarys2.unit_id order by created_at desc limit 1)))
		                select unit.id, unit.acron_block, unit.block, unit.acron_group, unit.group, unit.acron_unit, unit.unit, unit.complete_address,
                                unit.cep_unit, unit.area, unit.burgh, unit.donate, unit.registration_iptu, unit.city_id, unit.control_number, unit.lat, unit.lng,
                                unit.no_exemption, unit.front_area, unit.back_area, unit.right_area, unit.left_area, unit.limit_front, unit.limit_back, unit.limit_right,
                                unit.limit_left, unit.certificate_sefaz, unit.date_certificate_sefaz, unit.validate_certificate_sefaz, unit.enterprise_typology_id,
                                notary.unit_code, notary.office, notary.date_contract, notary.date_code, notary.office_contract, notary.date_petition, notary.date_signature,
                                notary.date_anoreg, notary.date_devolution, notary.requeriment, notary.date_requeriment, notary.declaratory_act_number, notary.date_act_declaratory,
                                notary.rejection_number, notary.date_act_rejection, notary.endorsement, unit.urbanistic_project, unit.created_at, unit.updated_at from
                                extranet.address_units unit inner join notarys notary on notary.unit_id = unit.id ')
                  AS address_units( id integer, acron_block varchar, block varchar, acron_group varchar, "group" varchar, acron_unit varchar, unit varchar, complete_address varchar,
                                  cep varchar, area varchar, burgh varchar, donate boolean, registration_iptu varchar, city_id integer, control_number integer, lat varchar, lng varchar,
                                  no_exemption boolean, front_area varchar, back_area varchar, right_area varchar, left_area varchar, limit_front varchar, limit_back varchar, limit_right varchar,
                                  limit_left varchar, certificate_sefaz varchar, date_certificate_sefaz timestamp, sefaz_certificate_validate_date timestamp, enterprise_typology_id integer,
                                  unit_code varchar, office varchar, date_contract date, date_code date, office_contract varchar, date_petition date, date_signature date,
                                  date_anoreg date, date_devolution date, requirement varchar, date_requeriment date, declaratory_act_number varchar, date_act_declaratory date,
                                  rejection_number varchar, date_act_rejection date, endorsement varchar, urbanistic_project varchar, created_at timestamp, updated_at timestamp))

    ActiveRecord::Base.connection.execute sql
  end

  task unit_registry: :environment do
    sql = %(insert into sihab.address_unit_registries(id, registry_type_id, unit_id, created_at, updated_at)
            SELECT *
                FROM sihab.dblink('host=10.233.38.16 port=5432 user=postgres dbname=codhab_production', 'select id, situation, unit_id, created_at, updated_at from extranet.address_registry_units')
                  AS address_unit_registries( id integer, situation integer, unit_id integer, created_at timestamp, updated_at timestamp))
  end

  task unit_situation: :environment do
    CSV.foreach("#{Support::Engine.root}/lib/files/sihab/address/unit_situation.csv",  { col_sep: ';', headers: false }) do |row|

      @situation = Support::Address::UnitSituation.new(
        unit_id: row[2],
        situation_type_id: row[6],
        user_id: row[9] == "TRUE" ? row[8] : row[7],
        observation: row[3],
        cadastre_id: row[0],
        external: row[9],
        created_at: row[4],
        updated_at: row[5]
      )
      @situation.save
    end
  end
end
