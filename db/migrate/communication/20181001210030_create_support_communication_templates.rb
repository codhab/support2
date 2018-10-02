class CreateSupportCommunicationTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.communication_templates' do |t|
      t.string  :name
      t.text    :description 
      t.integer :sector_id
      t.integer :creator_id 
      t.string  :origin_email
      t.boolean :status, default:  true
      
      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
