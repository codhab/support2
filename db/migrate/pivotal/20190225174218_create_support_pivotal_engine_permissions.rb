class CreateSupportPivotalEnginePermissions < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.pivotal_engine_permissions' do |t|
      t.integer :engine_id
      t.string  :name
      t.text    :description
      t.boolean :status, default: true
      
      t.string  :code 
      t.string  :controller
      t.string  :action
      t.string  :path

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
