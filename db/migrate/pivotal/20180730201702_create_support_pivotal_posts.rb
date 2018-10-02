class CreateSupportPivotalPosts < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.pivotal_posts' do |t|
      t.string    :title
      t.text      :content
      t.string    :description
      t.string    :image
      t.boolean   :image_header
      t.string    :flickr
      t.integer   :user_id
      t.integer   :count_view
      t.datetime  :publish_date
      t.boolean   :publish, default: false
      
      t.timestamps
      
      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
