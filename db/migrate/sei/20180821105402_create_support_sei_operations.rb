class CreateSupportSeiOperations < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.sei_operations' do |t|
      t.string  :code
      t.string  :title
      t.text    :description
      t.integer :procedure_type_id 
      t.integer :unit_id
      t.integer :level_access, default: 0
      t.boolean :tranning, default: true
        
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
