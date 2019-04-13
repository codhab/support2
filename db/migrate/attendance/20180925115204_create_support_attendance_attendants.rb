class CreateSupportAttendanceAttendants < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_attendants' do |t|
      t.integer :user_id
      t.integer :creator_id
      t.integer :attendant_type

      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
