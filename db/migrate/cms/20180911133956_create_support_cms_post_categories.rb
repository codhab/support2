class CreateSupportCmsPostCategories < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.cms_post_categories' do |t|
      t.string  :name
      t.boolean :status, default: true
      t.integer :category_type_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
