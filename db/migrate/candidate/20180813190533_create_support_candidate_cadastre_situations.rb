class CreateSupportCandidateCadastreSituations < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.candidate_cadastre_situations' do |t|
      t.integer :cadastre_id
      t.integer :cadastre_mirror_id
      t.integer :situation_type_id
      t.integer :subscribe_id
      t.integer :user_id
      t.text    :observation
      t.date    :date
      t.boolean :computer, default: false
      t.integer :cadastre_convocation_id
      t.string  :process_number
            
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end

    add_index 'sihab.candidate_cadastre_situations', :cadastre_id
    add_index 'sihab.candidate_cadastre_situations', :date
    add_index 'sihab.candidate_cadastre_situations', :situation_type_id
  end
end
