class CreateSupportCplNoticeTypes < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.cpl_notice_types' do |t|
      t.string   :name
      t.boolean  :status, default: true
      t.boolean  :deleted, default: false
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
