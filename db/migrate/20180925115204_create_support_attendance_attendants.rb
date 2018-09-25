class CreateSupportAttendanceAttendants < ActiveRecord::Migration[5.2]
  def change
    create_table :support_attendance_attendants do |t|

      t.timestamps
    end
  end
end
