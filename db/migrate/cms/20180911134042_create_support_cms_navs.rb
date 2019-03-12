class CreateSupportCmsNavs < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.cms_navs' do |t|
      t.string  :name
      t.string  :url
      t.integer :category_id
      t.integer :order
      t.integer :user_id
      t.boolean :publish, default: false
      t.boolean :target_blank, default: true

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
