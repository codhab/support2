class CreateSupportAttendanceTicketDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_ticket_documents' do |t|
      t.integer :ticket_id
      t.integer :ticket_step_id
      t.integer :document_type_id
      t.string  :attachment
      
      t.integer :attendant_id
      t.boolean :attendant_read, default: false
      
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
