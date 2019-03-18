class CreateSupportCandidateCadastreSituations < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.candidate_cadastre_situations' do |t|
      t.integer :cadastre_id
      t.integer :cadastre_mirror_id
      t.integer :situation_type_id
      t.integer :subscribe_id
      t.integer :user_id
      t.integer :program_id
      t.text    :observation
      t.boolean :computer, default: false
      t.integer :cadastre_convocation_id
      t.string  :process_number
            
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
