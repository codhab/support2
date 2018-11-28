class CreateSupportAttendanceTickets < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_tickets' do |t|
      t.integer :category_id
      t.integer :cadastre_id
      t.integer :cadastre_mirror_id
      t.string  :document_sei_number
      t.string  :document_sei_id
      t.integer :schedule_id
      t.date    :started_at
      t.date    :ended_at
      t.integer :viewr_id
      t.boolean :internal, default: false

      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
