class CreateSupportAttendanceTicketCategorySteps < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_ticket_category_steps' do |t|
      
      t.integer :ticket_category_id
      t.string  :name
      t.string  :resume
      t.string  :view_form
      t.boolean :document_required, default: false
      t.boolean :step_required, default: false
      t.integer :screen_order, default: 0
      t.boolean :allow_confirmation, default: false
      t.boolean :status, default: false
      t.text    :message_success  
      t.text    :message_pendent  

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
