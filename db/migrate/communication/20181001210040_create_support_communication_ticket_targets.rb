class CreateSupportCommunicationTicketTargets < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.communication_ticket_targets' do |t|
      t.integer  :ticket_id 
      t.string   :cpf
      t.string   :target_model 
      t.integer  :target_model_id
      t.string   :email
      t.string   :push
      t.string   :sms
      
      t.boolean   :email_read, default: false
      t.datetime  :email_read_at
      
      t.boolean   :push_read, default: false
      t.datetime  :push_read_at
                 
      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
