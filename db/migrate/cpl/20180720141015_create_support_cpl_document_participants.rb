class CreateSupportCplDocumentParticipants < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.cpl_document_participants' do |t|
      t.integer :notice_participant_id
      t.integer :notice_document_id
      t.string  :attachment

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
