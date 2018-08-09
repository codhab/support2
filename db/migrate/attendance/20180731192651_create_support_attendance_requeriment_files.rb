class CreateSupportAttendanceRequerimentFiles < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_requeriment_files' do |t|
      t.integer :requeriment_id
      t.string  :attachment
    
      t.timestamps
      
      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
