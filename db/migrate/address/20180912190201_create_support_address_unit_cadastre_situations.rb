class CreateSupportAddressUnitCadastreSituations < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.address_unit_cadastre_situations' do |t|
      t.string :name
      t.boolean :status, default: true

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
