class CreateSupportAttendanceAgendaSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_agenda_schedules' do |t|
      t.integer :agenda_id
      t.date    :date
      t.time    :hour 
      t.string  :name
      t.string  :cnpj
      t.string  :cpf
      t.integer :city_id
      t.string  :address
      t.string  :document_number 
      t.string  :email
      t.string  :telephone
      t.string  :celphone
      t.date    :born
      t.integer :situation_id
      t.integer :attendant_id
      t.text    :attendant_observation
      
      t.timestamps
      
      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
