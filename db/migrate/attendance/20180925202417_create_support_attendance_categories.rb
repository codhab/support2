class CreateSupportAttendanceCategories < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_categories' do |t|
      t.string  :name
      t.boolean :status

      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end