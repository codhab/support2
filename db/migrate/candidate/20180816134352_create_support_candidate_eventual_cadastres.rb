class CreateSupportCandidateEventualCadastres < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.candidate_eventual_cadastres' do |t|
      t.integer :cadastre_id
      t.integer :user_id
      t.text    :observation
      
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
