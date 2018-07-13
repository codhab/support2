class CreateSupportSpecialConditionTypes < ActiveRecord::Migration[5.2]
  def change
    create_table 'common.special_condition_types' do |t|
      t.string :name
      t.text :description
      t.boolean :status, default: true
      
      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
      
      t.timestamps
    end
  end
end
