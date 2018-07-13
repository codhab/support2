class CreateSupportPrograms < ActiveRecord::Migration[5.2]
  def change
    create_table 'common.programs' do |t|
      t.string :name
      t.string :acron
      t.boolean :status, default: true
      
      t.timestamps
      
      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil

      t.timestamps
    end
  end
end
