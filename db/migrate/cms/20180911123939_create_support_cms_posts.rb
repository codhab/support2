class CreateSupportCmsPosts < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.cms_posts' do |t|
      t.date    :publish_date
      t.text    :content
      t.text    :description
      t.string  :title
      t.string  :post_author
      t.string  :image
      t.string  :image_slide
      t.string  :author_image
      t.string  :caption_color
      t.string  :slug
      t.string  :layout
      t.string  :flickr
      t.boolean :slide, default: false
      t.boolean :image_header, default: false
      t.boolean :publish, default: false
      t.boolean :draft, default: false
      t.boolean :iframe, default: false
      t.integer :user_id
      t.integer :post_category_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
