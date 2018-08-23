class CreateSupportProcedureDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.procedure_documents' do |t|
      t.integer :procedure_id
      t.string  :document
      t.string  :document_number
      t.string  :number 
      
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
