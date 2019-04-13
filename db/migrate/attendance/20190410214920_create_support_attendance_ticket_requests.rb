class CreateSupportAttendanceTicketRequests < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_ticket_requests' do |t|
      t.integer  :ticket_id
      t.text     :content

      t.integer  :attendant_id

      t.boolean  :cadastre_read, default: false
      t.datetime :cadastre_read_at
      t.boolean  :solved, default: false
      
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
