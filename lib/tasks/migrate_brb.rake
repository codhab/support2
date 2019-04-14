require 'net/http'

namespace :migrate_brb do
  task populate: :environment do
    Rake::Task["migrate_brb:category"].invoke
    Rake::Task["migrate_brb:invoice"].invoke

    p 'Brb populado.'
  end

  task category: :environment do
    populate = JSON.parse(File.open("#{Support::Engine.root}/lib/files/extranet/brb/categories.json").read)

    populate['situations'].each do |state|
      state_obj = Support::Brb::Category.new(
        name: state['name'],
        default_value: state['default_value'],
        status: state['status'],
        id: state['id']
       )
      state_obj.save
    end
  end

  task invoice: :environment do
    sql = %(insert into extranet.brb_invoices(id, category_id, barcode, bank_agency, bank_account, cpf, cnpj,
                                  name, address, state_id, city, cep, invoice_type_id,
                                  due, value, message, payment, credit, bank_return, number_our,
                                  number_document, created_at, updated_at)
            SELECT *
                FROM sihab.dblink('host=10.233.38.16 port=5432 user=postgres dbname=codhab_production',
                                  'select id, category_id, barcode, bank_agency, bank_account,
                                          cpf, cnpj, name, address, state_id, city, cep, invoice_type, due, value,
                                          message, payment, credit, bank_return, our_number, document_number, created_at, updated_at
                                          from extranet.brb_invoices')
                  AS brb_invoices( id integer, category_id integer, barcode varchar, bank_agency varchar, bank_account varchar,
                              cpf varchar, cnpj varchar, name varchar, address varchar, state_id integer, city varchar, cep varchar, invoice_type integer, due date, value decimal,
                              message text, payment date, credit date, bank_return text, our_number varchar, document_number varchar, created_at timestamp, updated_at timestamp)

)
    ActiveRecord::Base.connection.execute sql
  end
end
