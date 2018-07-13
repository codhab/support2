class CreateSupportUserPivotalPermissions < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.pivotal_user_permissions' do |t|
      t.integer :permission_id
      t.integer :user_id
      t.integer :sponsor_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at
    end
  end
end
