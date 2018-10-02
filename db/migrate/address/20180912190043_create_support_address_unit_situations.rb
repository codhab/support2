class CreateSupportAddressUnitSituations < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.address_unit_situations' do |t|
      t.integer :unit_id
      t.integer :situation_type_id
      t.integer :user_id
      t.string  :document
      t.text    :observation

      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
