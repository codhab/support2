class CreateSupportSocialBurghs < ActiveRecord::Migration[5.2]
  def change
    create_table 'generic.social_burghs' do |t|
      t.string  :name
      t.boolean :status, default: true
      t.integer :city_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
