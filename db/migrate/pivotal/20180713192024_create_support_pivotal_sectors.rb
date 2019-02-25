class CreateSupportPivotalSectors < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.pivotal_sectors' do |t|
      t.string  :name
      t.string  :acron
      t.string  :prefex
      t.integer :father_id
      t.integer :responsible_id
      t.boolean :status, default: true
      t.string  :code
      t.string  :color

      t.timestamps
      
      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
