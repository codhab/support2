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

    add_index 'sihab.candidate_cadastre_positions', :cadastre_id
    add_index 'sihab.candidate_cadastre_positions', :cadastre_pontuation_id, name: 'position_candidate_cadastre_pontuation_id'
    add_index 'sihab.candidate_cadastre_positions', :position
    add_index 'sihab.candidate_cadastre_positions', :program_id
    add_index 'sihab.candidate_cadastre_positions', :sub_program_id
    
  end
end
