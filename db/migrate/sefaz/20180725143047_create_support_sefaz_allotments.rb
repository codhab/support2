class CreateSupportSefazAllotments < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.sefaz_allotments' do |t|
      t.integer  :user_id
      t.datetime :request_date
      t.string   :protocol_return
      t.integer  :exemption_type_id
      t.integer  :notifier_id
      t.text     :observation
      t.integer  :request_situation_id
      t.integer  :request_type_id
      t.date     :send_date
      t.integer  :send_staff_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
