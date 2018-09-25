class CreateSupportAttendanceDailies < ActiveRecord::Migration[5.2]
  def change
    create_table :support_attendance_dailies do |t|

      t.timestamps
    end
  end
end
