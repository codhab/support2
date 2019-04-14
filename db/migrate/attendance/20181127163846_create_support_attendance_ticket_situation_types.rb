class CreateSupportAttendanceTicketSituationTypes < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_ticket_situation_types' do |t|
      t.integer :code
      t.string  :name
      t.boolean :status, default: true 
      t.string  :label_view_candidate

      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
