class CreateSupportCplDocumentParticipants < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.cpl_document_participants' do |t|
      t.integer :notice_participant_id
      t.integer :document_notice_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
