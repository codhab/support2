class CreateSupportPivotalPermissions < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.pivotal_permissions' do |t|
      t.string  :name
      t.text    :description
      t.integer :group_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
