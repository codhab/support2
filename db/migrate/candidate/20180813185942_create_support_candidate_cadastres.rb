class CreateSupportCandidateCadastres < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.candidate_cadastres' do |t|
      t.string  :name
      t.string  :cpf
      t.integer :gender_id
      t.date    :born
      t.integer :born_uf_id
      t.string  :rg
      t.string  :rg_org
      t.integer :rg_uf_id
      t.string  :place_birth
      t.date    :arrival_df
      t.string  :telephone
      t.string  :telephone_optional
      t.string  :celphone
      t.string  :email
      t.boolean :special_condition, default: false
      t.integer :special_condition_type_id
      t.boolean :adapted_property, default: false
      t.string  :cep
      t.integer :city_id
      t.integer :state_id
      t.string  :address
      t.string  :address_complement
      t.decimal :family_income, precision: 8, scale: 2
      t.decimal :personal_income, precision: 8, scale: 2
      t.string  :work_cep
      t.integer :work_city_id
      t.integer :work_state_id
      t.integer :work_address
      t.string  :work_employment
      t.string  :nis
      t.string  :cid
      t.string  :mother_name
      t.integer :civil_state_id
      t.integer :program_id
      t.integer :sub_program_id
      t.string  :password
      t.string  :password_token, default: nil
      t.datetime :password_token_expires_at, default: nil
      t.string  :session_token, default: nil
      t.text    :introduce
      t.string  :nationality
      t.string  :wedding_regime
      t.date    :wedding_date, default: nil
      t.date    :admission_date, default: nil
      t.string  :avatar
      t.string  :app_push_token, default: nil
      t.string  :app_user_token, default: nil
      t.boolean :scoring, default: false 

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
