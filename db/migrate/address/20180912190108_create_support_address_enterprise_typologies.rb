class CreateSupportAddressEnterpriseTypologies < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.address_enterprise_typologies' do |t|
      t.integer :enterprise_id
      t.integer :unit_quantity
      t.string  :name
      t.text    :description
      t.string  :home_type
      t.string  :private_area
      t.boolean :status, default: true
      t.decimal :value_start, precision: 8, scale: 2
      t.decimal :value_end, precision: 8, scale: 2
      t.decimal :value_general, precision: 8, scale: 2
      t.integer :user_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end

    add_index 'sihab.address_enterprise_typologies', :enterprise_id
  end
end
