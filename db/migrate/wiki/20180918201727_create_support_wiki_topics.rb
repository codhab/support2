class CreateSupportWikiTopics < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.wiki_topics' do |t|
      t.string :name
      t.text :description
      t.boolean :status, defaul: false
      t.boolean :public, default: false
      t.integer :user_id
      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
      t.timestamps
    end
  end
end
