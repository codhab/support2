class CreateSupportSocialCadastres < ActiveRecord::Migration[5.2]
  def change
    create_table 'generic.social_cadastres' do |t|
      t.string  :name
      t.string  :cpf
      t.integer :gender_id
      t.date    :born
      t.string  :rg
      t.string  :rg_org
      t.integer :rg_uf_id
      t.date    :rg_date
      t.string  :place_birth
      t.string  :telephone
      t.string  :celphone
      t.string  :email
      t.boolean :relative_special, default: false
      t.string  :cep
      t.integer :city_id
      t.integer :burgh_id
      t.string  :address
      t.decimal :income, precision: 8, scale: 2
      t.string  :work
      t.string  :work_ocupation
      t.string  :nis
      t.string  :mother_name
      t.string  :father_name
      t.boolean :pension, default: false
      t.integer :pension_id
      t.boolean :benefit, default: false
      t.integer :bnefit_id
      t.integer :education_id
      t.boolean :course_interest, default: false
      t.string  :course_name

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
