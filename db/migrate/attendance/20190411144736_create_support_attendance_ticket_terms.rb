class CreateSupportAttendanceTicketTerms < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_ticket_terms' do |t|
      t.integer :ticket_id
      t.integer :term_id
      
      t.timestamps
    end
  end
end
