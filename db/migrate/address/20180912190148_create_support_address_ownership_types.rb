class CreateSupportAddressOwnershipTypes < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.address_ownership_types' do |t|
      t.string :name
      t.boolean :status, default: true

      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end