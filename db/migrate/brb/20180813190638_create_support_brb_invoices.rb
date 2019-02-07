class CreateSupportBrbInvoices < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.brb_invoices' do |t|
      t.integer  :category_id
      t.string   :barcode
      t.string   :bank_agency
      t.string   :bank_account
      t.string   :cpf
      t.string   :cnpj
      t.string   :name
      t.string   :address
      t.integer  :state_id
      t.string   :city
      t.string   :cep
      t.integer  :situation_id
      t.integer  :invoice_type_id
      t.date     :due
      t.decimal  :value, precision: 8, scale: 2
      t.text     :message
      t.date     :payment
      t.date     :credit
      t.text     :bank_return
      t.string   :number_our
      t.string   :number_document

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
