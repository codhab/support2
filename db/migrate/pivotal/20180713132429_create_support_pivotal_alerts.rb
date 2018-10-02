class CreateSupportPivotalAlerts < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.pivotal_alerts' do |t|
      t.string    :title
      t.text      :content
      t.boolean   :modal
      t.integer   :count_view
      t.integer   :user_id
      t.datetime  :started_at
      t.datetime  :ended_at
      t.timestamps
      t.boolean   :deleted, default: false
      t.datetime  :deleted_at, default: nil
    end
  end
end
