class CreateSupportProtocolConducts < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.protocol_conducts' do |t|
      t.text    :description
      t.integer :conduct_type
      t.integer :assessment_id
      t.integer :user_id
      t.integer :sector_id
      t.integer :allotment_id
      t.date    :replay_date
      t.date    :responded_date
      t.boolean :responded

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
