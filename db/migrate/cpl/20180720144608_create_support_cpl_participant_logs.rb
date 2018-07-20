class CreateSupportCplParticipantLogs < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.cpl_participant_logs' do |t|
      t.string   :name
      t.text     :description
      t.integer  :participant_id
      t.boolean  :deleted, default: false
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
