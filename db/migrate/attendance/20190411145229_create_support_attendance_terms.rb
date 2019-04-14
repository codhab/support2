class CreateSupportAttendanceTerms < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.attendance_terms' do |t|
      t.string  :title
      t.text    :content
      t.boolean :status, default: true

      t.timestamps
    end
  end
end
