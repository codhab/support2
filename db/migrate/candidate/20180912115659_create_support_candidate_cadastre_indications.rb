class CreateSupportCandidateCadastreIndications < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.candidate_cadastre_indications' do |t|
      t.integer  :cadastre_id
      t.integer  :allotment_cadastre_id
      t.integer  :enterprise_id
      t.boolean  :status, default: true
      t.datetime :inactived_at 
      t.boolean  :inactive_count, default: false
      
      t.boolean  :pre_indication, default: false
      t.datetime :actived_at
      
      t.integer  :user_id
      t.boolean  :computer, default: false
      t.boolean  :company,  default: false
      t.boolean  :staff,    default: true
      t.integer  :ticket_id

      t.boolean  :cadastre_answer, default: nil
      t.datetime :cadastre_answered_at
    
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil      
    end
  end
end
