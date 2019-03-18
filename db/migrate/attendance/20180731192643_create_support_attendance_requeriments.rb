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
      
      t.integer  :category_id 
      
      t.integer  :attendant_id
      t.text     :attendant_answer
      t.boolean  :attendant_answer, default: false

      t.boolean  :cancelled, default: false 
      t.datetime :cancelled_at
      
      t.boolean   :closed, default: false
      t.datetime  :closed_at

      t.boolean   :done, default: false
      
      t.timestamps
      
      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
