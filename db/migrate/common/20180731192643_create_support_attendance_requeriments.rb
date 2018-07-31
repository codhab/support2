class CreateSupportAttendanceRequeriments < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_requeriments' do |t|
      t.integer :cadastre_id 
      t.integer :entity_id
      t.string  :name
      t.string  :cpf
      t.string  :cnpj
      t.string  :telephone
      t.string  :celphone
      t.string  :address
      t.integer :city_id
      t.string  :document_number
      t.text    :content
      t.integer :category_id 
    
      t.timestamps
      
      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
