class CreateSupportPivotalNavPermissions < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.pivotal_nav_permissions' do |t|
      t.integer :nav_id
      t.integer :user_id
      t.integer :creator_id
      
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
