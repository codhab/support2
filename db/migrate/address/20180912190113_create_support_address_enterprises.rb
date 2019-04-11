class CreateSupportAddressEnterprises < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.address_enterprises' do |t|
      t.string  :name
      t.decimal :value, precision: 8, scale: 2
      t.integer :company_id
      t.integer :entity_id
      t.boolean :entity, default: false
      t.boolean :status, default: true
      t.string  :number_document
      t.string  :number_assessment
      t.boolean :manifestation_allow, default: false
      t.string  :web_url
      t.string  :lat
      t.string  :lng
      t.integer :city_id
      t.integer :user_id
      t.integer :unit_quantity

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
