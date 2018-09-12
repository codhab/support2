class CreateSupportCandidateIndicationEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.candidate_indication_evaluations' do |t|
      t.integer :cadastre_id
      t.integer :allotment_cadastre_id
      t.integer :entity_id
      
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
