class CreateSupportAttendanceTicketCategories < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_ticket_categories' do |t|

      t.string  :name
      t.text    :description

      t.boolean :status,  default: false
      t.boolean :unique,  default: false

      t.boolean :filter_situation,    default: false
      t.text    :filter_situation_id, array: true

      t.boolean :filter_convocation,    default: false
      t.text    :filter_convocation_id, array: true

      t.boolean :filter_program,    default: false
      t.text    :filter_program_id, array: true

      t.boolean :filter_sub_program, default: false
      t.text    :filter_sub_program_id, array: true
      
      t.boolean :filter_sql, default: false
      t.text    :filter_sql_content

      t.boolean :due, default: false

      t.date    :started_at
      t.date    :ended_at 

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
