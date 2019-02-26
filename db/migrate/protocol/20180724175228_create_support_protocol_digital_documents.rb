class CreateSupportProtocolDigitalDocuments < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.protocol_digital_documents' do |t|
      t.integer :page_number
      t.string  :doc_path
      t.integer :assessment_id
      t.integer :user_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
