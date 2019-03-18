class CreateSupportCandidateActivityDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.candidate_activity_documents' do |t|
      t.integer :cadastre_activity_id
      t.string  :document
      t.string  :description
      t.integer :user_id 
      
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
