class CreateSupportAttendanceTicketCategorySteps < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_ticket_category_steps' do |t|
      
      t.integer :ticket_category_id
      t.integer :step_id
      t.string  :name
      t.string  :resume
      t.boolean :document_required, default: false
      t.boolean :required, default: false
      t.integer :screen_order, default: 0
      t.boolean :allow_confirmation, default: false
      t.boolean :status, default: false

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
