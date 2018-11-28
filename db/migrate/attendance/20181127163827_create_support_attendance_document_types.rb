class CreateSupportAttendanceDocumentTypes < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_document_types' do |t|

      t.integer :code, default: 0

      t.string  :name
      t.text    :observation
      t.string  :label
      t.text    :description
      t.text    :help_text
      
      t.boolean :status, default: true
      
      t.integer :sei_tranning_id
      t.integer :sei_production_id

      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
