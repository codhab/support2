class CreateSupportEntityRaffleGroupUnits < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.entity_raffle_group_units' do |t|
      t.integer :group_id
      t.integer :unit_id
      t.string  :name
      t.boolean :status, default: true
      
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
