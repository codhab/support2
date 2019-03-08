class CreateSupportSocialCadastreSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table 'generic.social_cadastre_schedules' do |t|
      t.integer :cadastre_id
      t.date    :date
      t.time    :hour
      t.text    :observation
      t.integer :order
      t.integer :situation_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
