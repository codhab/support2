class CreateSupportEntityRaffleManifestations < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.entity_raffle_manifestations' do |t|
      t.integer :raffle_id
      t.integer :cadastre_id
      t.text    :group_ids, array: true

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
