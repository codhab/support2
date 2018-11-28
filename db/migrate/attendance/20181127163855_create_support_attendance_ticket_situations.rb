class CreateSupportAttendanceTicketSituations < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_ticket_situations' do |t|
      t.integer :ticket_id
      t.integer :situation_type_id
      t.integer :attendant_id
      t.text    :attendant_observation
      t.integer :station_id

      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
