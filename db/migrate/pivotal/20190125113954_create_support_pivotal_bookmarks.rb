class CreateSupportPivotalBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.pivotal_bookmarks' do |t|
      t.integer :user_id
      t.string  :target_model
      t.integer :target_model_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
