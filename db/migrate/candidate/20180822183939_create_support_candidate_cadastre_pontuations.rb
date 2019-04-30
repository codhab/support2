class CreateSupportCandidateCadastrePontuations < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'sihab.candidate_cadastre_pontuations' do |t|
      t.integer :cadastre_id
      t.integer :cadastre_mirror_id
      t.integer :pontuation_type_id

      t.float :bsb              
      t.float :dependent        
      t.float :timelist         
      t.float :special_condition
      t.float :income           
      t.float :total            
      
      t.integer :program_id
      t.integer :situation_type_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end

    add_index 'sihab.candidate_cadastre_pontuations', :cadastre_id
    add_index 'sihab.candidate_cadastre_pontuations', :program_id
    add_index 'sihab.candidate_cadastre_pontuations', :pontuation_type_id, name: 'cadastre_pontuations_type_id'
  end
end
