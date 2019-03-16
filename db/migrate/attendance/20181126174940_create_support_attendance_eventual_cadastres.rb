class CreateSupportAttendanceEventualCadastres < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_eventual_cadastres' do |t|
      t.integer :cadastre_id
      t.integer :user_id
      t.string  :name
      t.string  :cpf
      t.integer :gender_id
      t.date    :born
      t.integer :program_id
      
      t.text    :observation

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
