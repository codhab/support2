class CreateSupportSocialDependents < ActiveRecord::Migration[5.2]
  def change
    create_table 'generic.social_dependents' do |t|
      t.integer :cadastre_id
      t.string  :name
      t.string  :cpf
      t.integer :gender_id
      t.date    :born
      t.string  :rg
      t.string  :rg_org
      t.integer :rg_uf_id
      t.date    :rg_date
      t.integer :kinship_id
      t.integer :civil_state_id
      t.integer :education_id
      t.boolean :course_interest, default: false
      t.string  :course_name
      t.decimal :income, precision: 8, scale: 2
      t.string  :work_ocupation

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
