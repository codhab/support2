class CreateSupportCplNotices < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.cpl_notices' do |t|
      t.string   :name
      t.integer  :notice_type_id
      t.string   :document_number
      t.date     :proposal_date
      t.time     :proposal_hour
      t.date     :open_date
      t.time     :open_hour
      t.date     :session_date
      t.time     :session_hour
      t.string   :attachment
      t.text     :observation
      t.boolean  :status, default: true
      t.integer  :staff_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
