class CreateSupportBrbCategories < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.brb_categories' do |t|
      t.string  :name
      t.decimal :default_value, precision: 8, scale: 2
      t.boolean :status, default: true

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
