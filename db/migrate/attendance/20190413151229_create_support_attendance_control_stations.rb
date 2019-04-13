class CreateSupportAttendanceControlStations < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_control_stations' do |t|
      t.integer  :station_id
      t.integer  :attendant_id
      t.boolean  :status, default: false
      
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
