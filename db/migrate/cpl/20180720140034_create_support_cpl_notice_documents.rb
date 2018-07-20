class CreateSupportCplNoticeDocuments < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.cpl_notice_documents' do |t|
      t.integer :document_type_id
      t.integer :notice_id
      t.boolean  :deleted, default: false
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
