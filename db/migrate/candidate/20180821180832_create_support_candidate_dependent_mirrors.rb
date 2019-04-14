class CreateSupportCandidateDependentMirrors < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'sihab.candidate_dependent_mirrors' do |t|
      t.integer :cadastre_id
      t.integer :cadastre_mirror_id
      t.integer :dependent_id
      t.string  :name
      t.string  :cpf
      t.string  :rg
      t.string  :rg_org
      t.integer :rg_uf_id
      t.date    :born
      t.integer :gender_id
      t.string  :place_birth
      t.integer :civil_state_id
      t.decimal :income, precision: 8, scale: 2
      t.integer :kinship_id
      t.boolean :special_condition, default: false
      t.integer :special_condition_type_id
      t.string  :cid
      t.string  :nis
      t.string  :employment
      t.string  :nationality
      t.date    :admission_date

      t.boolean :created, default: false
      t.boolean :removed, default: false

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
