class CreateSupportAddressEnterpriseCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.address_enterprise_companies' do |t|
      t.string :fantasy_name
      t.string :name
      t.text   :description
      t.string :cnpj
      t.boolean :status, default: true
      t.string  :telephone
      t.string  :email
      t.string  :address
      t.integer  :city_id
      t.boolean :access_allow, default: true
      t.integer :user_id
      t.integer :state_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
