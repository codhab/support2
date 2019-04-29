class CreateSupportAddressUnitActivities < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.address_unit_activities' do |t|
      t.integer :unit_id
      t.text    :description
      t.integer :user_id
      t.integer :actvity_type_id
      t.string  :document
      
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil 
    end

    add_index 'sihab.address_unit_activities', :unit_id
  end
end
