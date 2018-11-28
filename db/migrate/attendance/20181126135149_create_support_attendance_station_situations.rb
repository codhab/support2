class CreateSupportAttendanceStationSituations < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_station_situations' do |t|
      t.integer :station_id
      t.integer :attendant_id
      t.integer :situation, default: 0
      t.boolean :administrator, default: false
      t.integer :user_id
      
      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
