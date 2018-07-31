class CreateSupportCommonCities < ActiveRecord::Migration[5.2]
  def change
    create_table 'common.cities' do |t|
      
      t.string  :name
      t.boolean :capital, default: false
      t.integer :state_id
      t.string  :lat
      t.string  :lng
      
      t.timestamps
      
      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
