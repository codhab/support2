class CreateSupportHelpdeskTicketRatings < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.helpdesk_ticket_ratings' do |t|
      t.integer :ticket_id
      t.integer :staff_id
      t.integer :rating, default: 0
      t.text    :comment
      
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil      
    end
  end
end
