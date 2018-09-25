class CreateSupportAttendanceAttendantStations < ActiveRecord::Migration[5.2]
  def change
    create_table :support_attendance_attendant_stations do |t|

      t.timestamps
    end
  end
end
