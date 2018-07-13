class CreateSupportEntityCadastreSituations < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.entity_cadastre_situations' do |t|
      t.integer :cadastre_id
      t.integer :situation_type_id
      t.text    :observation
      t.integer :user_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
