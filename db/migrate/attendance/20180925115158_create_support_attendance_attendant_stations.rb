class CreateSupportAttendanceAttendantStations < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_attendant_stations' do |t|
      t.integer :attendant_id
      t.integer :station_id
      t.integer :attendant_type_id
      
      t.integer :creator_id

      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
