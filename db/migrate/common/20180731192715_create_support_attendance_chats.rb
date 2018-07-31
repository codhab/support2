class CreateSupportAttendanceChats < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_chats' do |t|
      t.integer :cadastre_id
      t.integer :attendant_id
      t.boolean :close, default: false
      t.integer :closer_id
      
      t.timestamps
      
      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
