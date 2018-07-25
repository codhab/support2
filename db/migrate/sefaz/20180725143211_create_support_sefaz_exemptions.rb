class CreateSupportSefazExemptions < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.sefaz_exemptions' do |t|
      t.string   :name
      t.string   :cpf
      t.string   :city
      t.string   :address
      t.string   :realty_number
      t.string   :realty_value
      t.integer  :allotment_id
      t.string   :act_number
      t.boolean  :canceled
      t.datetime :canceled_date
      t.integer  :canceled_user_id
      t.text     :return_message
      t.integer  :user_id
      t.string   :system_message
      t.string   :number_act_cancel
      t.string   :year_act_cancel

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
