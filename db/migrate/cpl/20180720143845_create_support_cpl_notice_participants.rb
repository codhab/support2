class CreateSupportCplNoticeParticipants < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.cpl_notice_participants' do |t|
      t.integer  :notice_id
      t.integer  :participant_id
      t.boolean  :status, default: true
      t.boolean  :certificate, default: false
      t.datetime :doc_sent_at, default: nil

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
