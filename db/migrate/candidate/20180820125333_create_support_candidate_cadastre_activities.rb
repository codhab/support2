class CreateSupportCandidateCadastreActivities < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.candidate_cadastre_activities' do |t|

      t.integer  :cadastre_id
      t.integer  :cadastre_mirror_id
      t.integer  :activity_type_id
      t.integer  :user_id
      t.datetime :date
      t.boolean  :computer, default: false
      t.string   :title
      t.text     :justify
      t.string   :document
      t.boolean  :critical, default: false

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
