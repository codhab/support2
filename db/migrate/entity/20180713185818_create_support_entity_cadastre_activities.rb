class CreateSupportEntityCadastreActivities < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.entity_cadastre_activities' do |t|
      t.integer :cadastre_id
      t.text    :description
      t.integer :user_id
      t.integer :activity_type_id
      t.boolean :entity, default: false

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
