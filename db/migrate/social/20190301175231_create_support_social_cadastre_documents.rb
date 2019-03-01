class CreateSupportSocialCadastreDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table 'generic.social_cadastre_documents' do |t|
      t.integer :cadastre_id
      t.integer :document_type_id
      t.string  :attachment
      t.integer :user_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
