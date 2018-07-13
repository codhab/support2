class CreateSupportEntityRaffles < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.entity_raffles' do |t|
      t.string  :name
      t.text    :description
      t.string  :document
      t.date    :manifestation_start_at, default: nil
      t.date    :manifestation_end_at, default: nil
      t.date    :raffle_start_at, default: nil
      t.date    :raffle_end_at, default: nil
      t.boolean :status, default: true
      
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
