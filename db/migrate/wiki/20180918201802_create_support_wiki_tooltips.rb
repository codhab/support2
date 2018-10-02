class CreateSupportWikiTooltips < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.wiki_tooltips' do |t|
      t.string :code
      t.string :title
      t.string :content
      t.boolean :status
      t.integer :user_id
      t.integer :category_id
      t.timestamps
      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
