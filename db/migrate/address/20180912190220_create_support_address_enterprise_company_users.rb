class CreateSupportAddressEnterpriseCompanyUsers < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.address_enterprise_company_users' do |t|
      t.string  :name
      t.string  :email
      t.boolean :administrator, default: false
      t.string  :password
      t.string  :password_expires_at
      t.string  :last_password
      t.string  :remember_token
      t.datetime  :remember_token_expires_at
      t.boolean :status, default: true 

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
