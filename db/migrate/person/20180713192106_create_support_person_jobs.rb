class CreateSupportPersonJobs < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.person_jobs' do |t|
      t.string  :name
      t.string  :code
      t.boolean :status, default: false
      t.float   :salary
      t.string  :function_code

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
