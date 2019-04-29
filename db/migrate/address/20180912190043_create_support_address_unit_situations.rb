class CreateSupportAddressUnitSituations < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.address_unit_situations' do |t|
      t.integer :unit_id
      t.integer :situation_type_id
      t.integer :user_id
      t.string  :document
      t.text    :observation
      t.integer :cadastre_id
      t.integer :cadastre_mirror_id
      t.boolean :computer
      t.boolean :external

      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end

    add_index 'sihab.address_unit_situations', :unit_id
    add_index 'sihab.address_unit_situations', :situation_type_id
  end
end
