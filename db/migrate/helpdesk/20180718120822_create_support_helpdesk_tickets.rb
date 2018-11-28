class CreateSupportHelpdeskTickets < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.helpdesk_tickets' do |t|
      t.integer :ticket_type_id
      t.integer :subject_id 
      t.integer :staff_id
      t.integer :location_id
      t.string  :contact
      t.date    :date
      t.time    :hour
      t.text    :description
      t.integer :attendant_id
      t.integer :situation_type_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
