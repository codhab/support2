class CreateSupportHelpdeskTicketTypeUsers < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.helpdesk_ticket_type_users' do |t|
      t.integer :ticket_type_id
      t.integer :staff_id
      t.integer :user_id

      t.timestamps
      
      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
