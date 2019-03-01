class CreateSupportSocialCadastreActivities < ActiveRecord::Migration[5.2]
  def change
    create_table 'generic.social_cadastre_activities' do |t|
      t.integer :cadastre_id
      t.text    :description
      t.string  :attachment_one
      t.string  :attachment_two
      t.date    :date
      t.hour    :hour
      t.integer :activity_type_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
