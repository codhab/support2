class CreateSupportHelpdeskTicketActivities < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.helpdesk_ticket_activities' do |t|
      t.integer :ticket_id
      t.integer :user_id
      t.text    :content
      t.boolean :attendant, default: false
      t.string  :document

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
