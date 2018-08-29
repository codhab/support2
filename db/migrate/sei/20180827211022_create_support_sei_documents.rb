class CreateSupportSeiDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.sei_documents' do |t|
      t.integer :procedure_id
      t.string  :document_subject_id
      t.string  :sei_document_number
      t.string  :sei_document_id
      t.string  :document
      t.string  :description
    
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
