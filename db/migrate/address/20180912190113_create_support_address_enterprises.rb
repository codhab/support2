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
      t.string  :type_document
      t.string  :number_assessment
      t.string  :observation_document
      t.boolean :manifestation_allow, default: false
      t.string  :web_url
      t.string  :lat
      t.string  :lng
      t.integer :city_id
      t.integer :user_id
      t.integer :unit_quantity, default: 0

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end

    add_index 'sihab.address_enterprises', :company_id
    add_index 'sihab.address_enterprises', :entity_id
    add_index 'sihab.address_enterprises', :city_id
  end
end
