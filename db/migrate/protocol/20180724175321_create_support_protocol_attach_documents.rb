class CreateSupportProtocolAttachDocuments < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table :support_protocol_attach_documents do |t|
      t.integer :document_father_id
      t.integer :document_child_id
      t.integer :attach_type
      t.integer :sector_id
      t.integer :staff_id
      t.text    :observation

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
