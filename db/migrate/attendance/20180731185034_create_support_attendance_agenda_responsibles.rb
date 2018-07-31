class CreateSupportAttendanceAgendaResponsibles < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_agenda_responsibles' do |t|
      t.integer :staff_id
      t.integer :agenda_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
