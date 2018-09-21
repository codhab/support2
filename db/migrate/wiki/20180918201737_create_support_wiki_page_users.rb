class CreateSupportWikiPageUsers < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.wiki_page_users' do |t|
      t.integer :topic_id
      t.integer :staff_id
      t.integer :user_id
      t.timestamps
      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
