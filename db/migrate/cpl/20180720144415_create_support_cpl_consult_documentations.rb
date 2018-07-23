class CreateSupportCplConsultDocumentations < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.cpl_consult_documentations' do |t|
      t.integer  :document_participant_id
      t.integer  :notice_participant_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
