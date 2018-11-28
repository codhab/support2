class CreateSupportHelpdeskTicketTypeSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.helpdesk_ticket_type_subjects' do |t|

      t.integer :ticket_type_id
      t.string  :name
      t.boolean :status, default: true
      
      t.timestamps  
      
      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
