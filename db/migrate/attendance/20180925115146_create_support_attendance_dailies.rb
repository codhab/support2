class CreateSupportAttendanceDailies < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_dailies' do |t|
      t.integer :station_id
      t.integer :attendant_id
      t.string  :name
      t.string  :cpf
      t.string  :document_number
      t.boolean :scheduled
      t.integer :category_id
      t.integer :daily_type_id
      t.boolean :preferential
      t.integer :preferential_id
      t.boolean :special_condition
      t.integer :special_condition_id

      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
