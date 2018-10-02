class CreateSupportCommunicationTemplateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.communication_template_users' do |t|
      t.integer :staff_id 
      t.integer :template_id 
      t.boolean :administrador, default: false
      t.integer :creator_id

      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
