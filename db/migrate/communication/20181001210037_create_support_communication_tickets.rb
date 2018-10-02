class CreateSupportCommunicationTickets < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.communication_tickets' do |t|
      t.integer  :template_id
      t.integer  :template_user_id
      t.text     :content
      t.boolean  :xls, default: false 
      t.string   :xls_url
      t.boolean  :email, default: false
      t.boolean  :sms,   default: false
      t.boolean  :push,  default: false
      t.boolean  :candidate_notification, default: false
      t.boolean  :processed, default: false
      t.datetime :processed_at

      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
