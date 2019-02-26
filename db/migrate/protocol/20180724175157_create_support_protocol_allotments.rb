class CreateSupportProtocolAllotments < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.protocol_allotments' do |t|
      t.text    :description
      t.integer :priority
      t.date    :replay_date
      t.integer :amount_docs
      t.boolean :status, default: false
      t.integer :sector_id
      t.integer :user_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
