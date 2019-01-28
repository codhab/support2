class CreateSupportPivotalNavs < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.pivotal_navs' do |t|
      t.string  :label
      t.text    :description
      t.integer :father_id
      t.boolean :status, default: true
      t.integer :group_permission_id
      t.text    :permission_ids, array: true
      t.string  :url
      t.integer :position, default: 0
      t.string  :icon

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
