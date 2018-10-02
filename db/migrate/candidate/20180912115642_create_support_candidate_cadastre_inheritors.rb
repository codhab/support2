class CreateSupportCandidateCadastreInheritors < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.candidate_cadastre_inheritors' do |t|
      t.integer :cadastre_id
      t.string  :place_birth
      t.string  :name
      t.string  :cpf
      t.string  :rg
      t.date    :born
      t.integer :civil_state_id
      t.integer :gender_id
      t.string  :single_name
      t.decimal :percentage, precision: 8, scale: 2
      t.text    :observation
      t.boolean :estate, default: false

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
