class CreateSupportPivotalEngines < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.pivotal_engines' do |t|
      t.string  :name
      t.text    :description
      t.string  :code 
      t.boolean :status, default: true 
      
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
