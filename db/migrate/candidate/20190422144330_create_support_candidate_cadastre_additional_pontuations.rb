class CreateSupportCandidateCadastreAdditionalPontuations < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.candidate_cadastre_additional_pontuations' do |t|

      t.integer :cadastre_id
      t.integer :additional_pontuation_id
      
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil      
    end
  end
end
