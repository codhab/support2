class CreateSupportCandidateCadastrePontuations < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'sihab.candidate_cadastre_pontuations' do |t|
      t.integer :cadastre_id
      t.integer :cadastre_mirror_id
      t.integer :code
      t.decimal :bsb
      t.decimal :dependent
      t.decimal :timelist
      t.decimal :special_condition
      t.decimal :income
      t.decimal :total
      t.integer :program_id
      t.integer :situation_type_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
