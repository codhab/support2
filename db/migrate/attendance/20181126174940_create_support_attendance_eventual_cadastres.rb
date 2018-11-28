class CreateSupportAttendanceEventualCadastres < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_eventual_cadastres' do |t|
      t.integer :cadastre_id
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
      t.integer :civil_state_id
      t.integer :program_id
      t.integer :sub_program_id
      t.string  :password
      t.integer :situation_id
      
      t.text    :observation
      t.integer :user_id

      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
