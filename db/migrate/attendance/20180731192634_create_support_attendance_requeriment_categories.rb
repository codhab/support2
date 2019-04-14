class CreateSupportAttendanceRequerimentCategories < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_requeriment_categories' do |t|
      t.string  :name
      t.text    :description
      
      t.boolean :outside_cadastre, default: false
      
      t.text    :program_id, array: true
      
      t.boolean :situation, default: false
      t.text    :situation_id, array: true 
      
      t.boolean :status, default: true

      t.timestamps
      
      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
