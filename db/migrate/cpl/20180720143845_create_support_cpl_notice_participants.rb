class CreateSupportCplNoticeParticipants < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.cpl_notice_participants' do |t|
      t.integer  :notice_id
      t.integer  :participant_id
      t.boolean  :status
      t.boolean  :deleted, default: false
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
