class CreateSupportCplNoticeAttachments < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.cpl_notice_attachments' do |t|
      t.string  :name
      t.string  :attachment
      t.text    :observation
      t.integer :notice_id
      t.boolean :status, default: true
      t.integer :staff_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
