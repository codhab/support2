class CreateSupportCandidateIndicationAllotmentCadastres < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.candidate_indication_allotment_cadastres' do |t|
      t.integer :allotment_id
      t.integer :cadastre_id
      t.integer :program_id
      
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
