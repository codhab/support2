class CreateSupportAttendanceAgendas < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_agendas' do |t|
      t.string  :title
      t.text    :resume
      t.text    :content
      t.date    :started_at
      t.date    :ended_at 
      t.time    :hour_start
      t.time    :hour_end
      t.integer :attendance_time,     default: 0
      t.integer :attendance_quantity, default: 0
      t.boolean :lunch, default: false
      t.time    :lunch_hour_start
      t.time    :lunch_hour_end
      t.integer :lunch_attendance_quantity, default: 0
      t.integer :location_id
      t.integer :creator_id
      t.boolean :status, default: false
      
      t.boolean :restriction, default: false
      t.boolean :restriction_presence, default: false
      t.text    :restriction_sql

      t.boolean :saturday, default: false
      t.time    :saturday_hour_start
      t.time    :saturday_hour_end
      t.integer :saturday_attendance_quantity, default: 0
      
      t.boolean :sunday, default: false
      t.time    :sunday_hour_start
      t.time    :sunday_hour_end
      t.integer :sunday_attendance_quantity, default: 0

      t.integer :category_id
      
      t.timestamps
      
      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
