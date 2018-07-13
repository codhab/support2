class CreateSupportEntityMemberJobs < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.entity_member_jobs' do |t|
      t.string  :name
      t.boolean :status, default: true

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
