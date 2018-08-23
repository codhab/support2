class CreateSupportSeiUnits < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.sei_units' do |t|
      t.string  :name
      t.boolean :status, default: true
      t.string  :sei_id
      t.string  :sei_tranning_id
      t.integer :sector_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
