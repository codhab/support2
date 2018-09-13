class CreateSupportAddressUnitCadastres < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.address_unit_cadastres' do |t|
      t.integer :unit_id
      t.integer :cadastre_id
      t.integer :cadastre_mirror_id
      t.integer :situation_id
      t.integer :user_id
      t.boolean :external, default: false
      t.boolean :computer, default: false

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
