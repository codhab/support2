class CreateSupportAddressRegions < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.address_regions' do |t|
      t.string  :name
      t.boolean :status, default: true
      t.text    :description

      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
