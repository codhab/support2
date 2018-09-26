class CreateSupportAttendanceDailyTypes < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_daily_types' do |t|
      t.string  :name
      t.text    :description
      t.boolean :status

      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
