class CreateSupportPivotalUserViewLogs < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.pivotal_user_view_logs', id: false do |t|
      t.primary_key :id, :uuid, default: "uuid_generate_v4()", null: false
      t.integer :user_id
      t.string  :http_method
      t.string  :controller_class_name
      t.text    :fullpath
      t.text    :original_fullpath
      t.text    :parameters
      t.text    :user_agent
      t.string  :remote_ip
      
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
