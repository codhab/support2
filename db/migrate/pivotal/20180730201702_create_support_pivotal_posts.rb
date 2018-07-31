class CreateSupportPivotalPosts < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.pivotal_posts' do |t|
      t.string  :title
      t.string  :resume
      t.string    :image
      t.text    :content
      t.boolean :status, default: true
      t.integer :user_id
      
      t.timestamps
      
      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
