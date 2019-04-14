class CreateSupportCandidateCadastreAddScores < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.candidate_cadastre_add_scores' do |t|
      t.integer :score, default: 0
      t.text    :observation

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil      
    end
  end
end
