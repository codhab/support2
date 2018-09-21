class CreateSupportWikiPages < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.wiki_pages' do |t|
      t.integer :topic_id
      t.string  :title
      t.integer :user_id
      t.text    :content
      t.boolean :iframe, default: false
      t.string  :iframe_url
      t.boolean :status, default: true

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
