class InstallAudited < ActiveRecord::Migration[5.2]
  def self.up
    create_table 'extranet.audits', :force => true do |t|
      t.column :auditable_id, :integer
      t.column :auditable_type, :string
      t.column :associated_id, :integer
      t.column :associated_type, :string
      t.column :user_id, :integer
      t.column :user_type, :string
      t.column :username, :string
      t.column :action, :string
      t.column :audited_changes, :text
      t.column :version, :integer, :default => 0
      t.column :comment, :string
      t.column :remote_address, :string
      t.column :request_uuid, :string
      t.column :created_at, :datetime
    end

    add_index 'extranet.audits', [:auditable_type, :auditable_id], :name => 'auditable_index'
    add_index 'extranet.audits', [:associated_type, :associated_id], :name => 'associated_index'
    add_index 'extranet.audits', [:user_id, :user_type], :name => 'user_index'
    add_index 'extranet.audits', :request_uuid
    add_index 'extranet.audits', :created_at
  end

  def self.down
    drop_table 'extranet.audits'
  end
end
