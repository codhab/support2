class CreateSupportHelpdeskTicketSituations < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.helpdesk_ticket_situations' do |t|
      t.integer :ticket_id
      t.integer :situation_type_id
      t.integer :user_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
