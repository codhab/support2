class CreateSupportCandidateCadastreProcedurals < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'sihab.candidate_cadastre_procedurals' do |t|
      t.integer :cadastre_id
      t.integer :procedural_type_id
      t.integer :subscribe_id
      t.integer :user_id
      t.text    :observation
      t.string  :process_number
      t.string  :process_type
      t.boolean :computer, default: false
      t.integer :cadastre_convocation_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
