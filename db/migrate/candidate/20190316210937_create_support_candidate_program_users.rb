class CreateSupportCandidateProgramUsers < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.candidate_program_users' do |
      
      t.integer :program_id
      t.integer :user_id
      t.integer :ticket_id
      t.text    :observation

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
