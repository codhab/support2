class CreateSupportCandidateIndicationActivities < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.candidate_indication_activities' do |t|
      t.integer :cadastre_indication_id
      t.integer :activity_type_id
      t.integer :user_id
      t.boolean :computer, default: false
      t.boolean :company,  default: false
      t.boolean :staff,    default: true
      t.integer :ticket_id 
      
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil      
    end
  end
end
