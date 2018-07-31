class CreateSupportAttendanceAgendaReferenceCategories < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_agenda_reference_categories' do |t|
      t.string :name
      t.text    :description
      t.boolean :status, default: true 
      
      t.timestamps
            
      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
