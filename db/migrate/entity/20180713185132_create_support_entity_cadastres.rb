class CreateSupportEntityCadastres < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.entity_cadastres' do |t|
      t.string  :name
      t.string  :cnpj
      t.string  :fantasy_name
      t.string  :telephone
      t.string  :telephone_optional
      t.string  :cell_phone
      t.string  :email
      t.integer :city_id
      t.string  :address
      t.string  :address_number
      t.string  :address_complement
      t.string  :cep
      t.text    :observation
      t.boolean :status, default: true
      t.string  :password
      t.string  :reset_token
      t.boolean :old, default: false
      t.string  :lat
      t.string  :lng
      
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
