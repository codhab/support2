class CreateSupportAddressLabels < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.address_labels' do |t|
      t.string  :name
      t.text    :description
      t.boolean :status, default: false

      t.timestamps
      
      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil    
    end
  end
end
