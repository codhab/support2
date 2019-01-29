class CreateSupportPivotalSessions < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.pivotal_sessions' do |t|
      
      t.string  :target_id
      t.string  :target_model
      t.string  :target_action
      t.string  :ip

      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
