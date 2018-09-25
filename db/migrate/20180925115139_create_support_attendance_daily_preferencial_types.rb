class CreateSupportAttendanceDailyPreferencialTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :support_attendance_daily_preferencial_types do |t|

      t.timestamps
    end
  end
end
