class CreateSupportPivotalEnginePermissions < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.pivotal_engine_permissions' do |t|
      t.integer :engine_id
      t.string  :name
      t.boolean :status, default: true
      
      t.string  :code 
      t.string  :target_method
      t.string  :url

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
