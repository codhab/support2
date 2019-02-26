class CreateSupportProtocolLocations < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.protocol_locations' do |t|
      t.string  :shelf
      t.string  :pile
      t.string  :box
      t.text    :observation
      t.string  :desk
      t.string  :network_path
      t.integer :assessment_id
      t.integer :sector_id
      t.integer :user_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
