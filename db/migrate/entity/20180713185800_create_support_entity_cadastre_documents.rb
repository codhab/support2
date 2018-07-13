class CreateSupportEntityCadastreDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.entity_cadastre_documents' do |t|
      t.integer :cadastre_id
      t.integer :document_type_id
      t.string  :document
      
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
