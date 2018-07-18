class CreateSupportHelpdeskTicketAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.helpdesk_ticket_attachments' do |t|
      t.integer :ticket_id
      t.string  :document
      
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
