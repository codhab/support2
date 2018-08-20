class CreateSupportCandidateConvocations < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'sihab.candidate_convocations' do |t|
      t.string  :name
      t.text    :description
      t.date    :start_date
      t.date    :end_date
      t.integer :quantity
      t.text    :justify
      t.boolean :status, default: true
      t.integer :program_id
      t.integer :user_id
      t.string  :document
      t.date    :document_date

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
