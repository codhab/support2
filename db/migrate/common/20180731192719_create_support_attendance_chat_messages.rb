class CreateSupportAttendanceChatMessages < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_chat_messages' do |t|
      t.integer :chat_id
      t.text    :content
      t.boolean :attendant, default: false 
      t.integer :attendant_id
      t.string  :attachment
      
      t.timestamps
    end
  end
end
