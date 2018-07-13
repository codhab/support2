class CreateSupportEntityRaffleGroups < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.entity_raffle_groups' do |t|
      t.integer :raffle_id
      t.string  :name
      t.integer :city_id
      t.integer :winner_id
      t.boolean :status, default: true

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
