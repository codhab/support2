class CreateSupportCommonStates < ActiveRecord::Migration[5.2]
  def change
    create_table 'common.states' do |t|
      t.string :name
      t.string :acronym
      
      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil

      t.timestamps
    end
  end
end
