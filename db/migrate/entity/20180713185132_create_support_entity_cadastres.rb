class CreateSupportEntityCadastres < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.entity_cadastres' do |t|
      t.uuid    :uuid, default: "uuid_generate_v4()", null: false
      t.string  :name
      t.string  :cnpj
      t.string  :acron
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
      t.string  :lat
      t.string  :lng
      
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end

    add_index 'sihab.entity_cadastres', :uuid, unique: true
    add_index 'sihab.entity_cadastres', :cnpj
    add_index 'sihab.entity_cadastres', :city_id
  end
end
