class CreateSupportAttendanceStepDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_step_documents' do |t|
      t.integer :document_type_id
      t.integer :step_id

      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
