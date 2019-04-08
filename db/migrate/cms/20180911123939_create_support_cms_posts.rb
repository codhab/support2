class CreateSupportCmsPosts < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.cms_posts' do |t|
      t.string  :title
      t.text    :content
      t.text    :description
      t.string  :image
      t.boolean :external, default: false
      t.boolean :internal, default: true
      t.string  :image_slide
      t.boolean :slide, default: false
      t.boolean :image_header, default: false
      t.string  :author_image
      t.string  :slide_color
      t.string  :external_content_url
      t.date    :publish_date
      t.string  :post_author
      t.boolean :publish, default: false
      t.boolean :draft, default: false
      t.string  :slug
      t.string  :layout
      t.boolean :iframe, default: false
      t.string  :iframe_url
      t.integer :user_id
      t.integer :post_category_id
      t.integer :old_id
      t.string  :old_target

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
