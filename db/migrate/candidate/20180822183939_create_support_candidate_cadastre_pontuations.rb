class CreateSupportCandidateCadastrePontuations < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'sihab.candidate_cadastre_pontuations' do |t|
      t.integer :cadastre_id
      t.integer :cadastre_mirror_id
      t.integer :code
      t.decimal :bsb, precision: 10, scale: 10
      t.decimal :dependent, precision: 10, scale: 10
      t.decimal :timelist, precision: 10, scale: 10
      t.decimal :special_condition, precision: 10, scale: 10
      t.decimal :income, precision: 10, scale: 10
      t.decimal :total, precision: 10, scale: 10
      t.integer :program_id
      t.integer :situation_type_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end