class CreateSupportPivotalPermissionGroups < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.pivotal_permission_groups' do |t|
      t.string  :name
      t.string  :description
      t.text    :permission_ids
      t.integer :group_type, default: 0
      
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil      
    end
  end
end
