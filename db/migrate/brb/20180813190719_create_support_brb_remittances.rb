class CreateSupportBrbRemittances < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.brb_remittances' do |t|
      t.text    :content
      t.text    :header_content
      t.integer :invoice_id
      t.boolean :publish
      t.date    :date

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
