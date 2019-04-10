class CreateSupportAttendanceTicketSteps < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_ticket_steps' do |t|
      t.integer  :ticket_id
      t.integer  :category_step_id

      t.boolean  :document,     default: false
      t.datetime :document_at

      t.boolean  :data_updated, default: false
      t.datetime :date_updated_at 

      t.boolean  :confirmation, default: false
      t.datetime :confirmation_at
      
      t.timestamps


      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
