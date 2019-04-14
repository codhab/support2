class CreateSupportAttendanceMobileBanners < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_mobile_banners' do |t|
      t.string  :title
      t.text    :content

      t.boolean :filter_situation,    default: false
      t.text    :filter_situation_id, array: true, default: []

      t.boolean :filter_convocation,    default: false
      t.text    :filter_convocation_id, array: true, default: []

      t.boolean :filter_program,    default: false
      t.text    :filter_program_id, array: true, default: []

      t.boolean :filter_sub_program, default: false
      t.text    :filter_sub_program_id, array: true, default: []
      
      t.boolean :filter_sql, default: false
      t.text    :filter_sql_content

      t.boolean  :filter_cadastre, default: false
      t.text     :filter_cadastre_id, array: true, default: []

      t.boolean  :status, default: false
      
      t.boolean  :due, default: false
      t.date     :started_at
      t.date     :ended_at

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil

    end
  end
end
