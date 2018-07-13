class CreateSupportPivotalAlerts < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.pivotal_alerts' do |t|
      t.string  :title
      t.text    :description
      t.integer :alert_type_enum
      t.text    :sql_filter
      t.boolean :sql_filter_status, default: false

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
