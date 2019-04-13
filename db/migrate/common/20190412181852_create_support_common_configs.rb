class CreateSupportCommonConfigs < ActiveRecord::Migration[5.2]
  def change
    create_table 'common.configs' do |t|
      
      t.string :code
      t.string :value

      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end

    add_index 'common.configs', :code, unique: true
  end
end
