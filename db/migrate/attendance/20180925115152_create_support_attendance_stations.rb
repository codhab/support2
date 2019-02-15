class CreateSupportAttendanceStations < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_stations' do |t|
      t.string  :name
      t.text    :description
      t.string  :lat
      t.string  :lng
      t.integer :responsible_id
      t.boolean :status, default: true

      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
