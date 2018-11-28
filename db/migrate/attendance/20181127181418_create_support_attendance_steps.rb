class CreateSupportAttendanceSteps < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_steps' do |t|
      t.string  :name
      t.string  :description
      t.boolean :status, default: true
      
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
