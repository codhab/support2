class CreateSupportEntityProvisonalCandidates < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.entity_provisonal_candidates' do |t|
      t.integer :cadastre_id
      t.integer :candidate_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
