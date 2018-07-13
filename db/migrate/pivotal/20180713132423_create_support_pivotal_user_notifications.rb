class CreateSupportPivotalUserNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.pivotal_user_notifications' do |t|
      t.integer   :user_id
      t.string    :title
      t.text      :description
      t.boolean   :read, default: false
      t.datetime  :read_datetime
      t.boolean   :priority, default: false
      t.integer   :notification_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at
    end
  end
end
