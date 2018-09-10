class CreateSupportPivotalUserGroups < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.pivotal_user_groups' do |t|
      t.text    :observation
      t.integer :group_id
      t.integer :user_id
      t.integer :sponsor_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
