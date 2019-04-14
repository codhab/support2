class CreateSupportAttendanceTickets < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_tickets' do |t|
      t.integer  :category_id
      t.integer  :situation_type_id

      t.integer  :cadastre_id
      t.integer  :cadastre_mirror_id
      
      t.string   :document_sei_number
      t.string   :document_sei_id
      
      t.date     :started_at
      t.date     :ended_at
      
      t.integer  :viewer_id
      t.boolean  :viewer, default: false
      t.datetime :viewer_at

      t.integer  :attendant_id
      t.boolean  :attendant_status, default: nil
      t.datetime :attendant_status_at
      t.text     :attendant_observation

      t.integer  :supervisor_id
      t.integer  :supervisor_status, default: nil
      t.datetime :supervisor_status_at
      t.text     :supervisor_observation
      
      t.boolean  :internal, default: false
      
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
