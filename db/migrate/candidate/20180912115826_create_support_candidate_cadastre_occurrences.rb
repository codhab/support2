class CreateSupportCandidateCadastreOccurrences < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.candidate_cadastre_occurrences' do |t|
      t.integer :cadastre_id
      t.string  :name
      t.text    :description
      
      t.string  :friendly_name
      t.string  :friendly_description
      
      t.boolean :impediment, default: false
      t.boolean :alert, default: false 
      t.boolean :portal, default: false
        
      t.integer :user_id
      
      t.boolean :computer, default: false 
      t.boolean :external, default: false 

      t.integer :ticket_id

      t.string  :target_id
      t.string  :target_code
      
      t.boolean   :solved, default: false
      t.datetime  :solved_at
      t.integer   :solved_user_id
      t.text      :solved_feedback
      t.string    :solved_document

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil      
    end
  end
end
