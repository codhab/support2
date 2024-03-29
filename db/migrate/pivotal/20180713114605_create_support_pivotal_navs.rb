class CreateSupportPivotalNavs < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.pivotal_navs' do |t|
      t.string  :label
      t.text    :description
      t.integer :father_id
      t.boolean :status, default: true
      t.string  :url
      t.integer :position, default: 0
     
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
