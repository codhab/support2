class CreateSupportCandidateOccurrenceTargets < ActiveRecord::Migration[5.2]
  def change
    create_table :support_candidate_occurrence_targets do |t|

      t.timestamps
    end
  end
end
