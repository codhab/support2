class CreateSupportAddressUnitLabels < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.address_unit_labels' do |t|
      t.integer :unit_id
      t.integer :label_id
      t.text    :observation
      t.integer :user_id
      
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil      
    end
  end
end