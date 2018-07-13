class CreateSupportPivotalNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.pivotal_notifications' do |t|
      t.string  :name
      t.text    :description
      t.boolean :status, default: false
      t.boolean :processed, default: false
      t.integer :owner_id
      t.text    :sql_filter
      t.boolean :sql_filter_status, default: false

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
