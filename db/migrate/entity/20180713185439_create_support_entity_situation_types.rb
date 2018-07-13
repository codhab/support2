class CreateSupportEntitySituationTypes < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.entity_situation_types' do |t|
      t.string  :name
      t.text    :description
      t.boolean :status, default: true
      t.integer :user_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
