class CreateSupportAttendanceDailyTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :support_attendance_daily_types do |t|

      t.timestamps
    end
  end
end
