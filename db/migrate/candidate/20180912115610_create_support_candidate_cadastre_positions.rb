class CreateSupportCandidateCadastrePositions < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.candidate_cadastre_positions' do |t|
      t.integer :cadastre_id
      t.integer :cadastre_pontuation_id
      t.integer :position
      t.integer :program_id 
      t.integer :sub_program_id 
      t.integer :list_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil      
    end
  end
end
