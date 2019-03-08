class CreateSupportCandidateOccurrenceTargets < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.candidate_occurrence_targets' do |t|
      t.string  :name
      t.text    :description
      t.text    :observation
      t.boolean :status, default: false
      t.integer :user_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
