class CreateSupportProtocolSubjects < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.protocol_subjects' do |t|
      t.string  :name
      t.text    :description
      t.boolean :status, default: true

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
