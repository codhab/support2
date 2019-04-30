class CreateSupportAddressUnitRegistries < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.address_unit_registries' do |t|
      t.integer :unit_id
      t.integer :registry_type_id
      
      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end

    add_index 'sihab.address_unit_registries', :unit_id
    add_index 'sihab.address_unit_registries', :registry_type_id
  end
end
