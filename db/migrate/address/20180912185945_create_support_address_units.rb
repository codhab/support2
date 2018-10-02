class CreateSupportAddressUnits < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.address_units' do |t|
      t.string  :acron_block
      t.string  :block
      t.string  :acron_group
      t.string  :group
      t.string  :acron_unit
      t.string  :unit
      t.string  :complete_address
      t.string  :cep
      t.string  :area
      t.string  :burgh
      t.boolean :donate
      t.date    :iptu_date
      t.string  :iptu_number
      t.integer :use_type_id
      t.integer :city_id
      t.integer :program_id
      t.integer :sub_program_id
      t.string  :control_number
      t.string  :lat
      t.string  :lng
      t.boolean :no_exemption, default: false
      t.string  :area_front
      t.string  :area_back
      t.string  :area_right
      t.string  :area_left
      t.string  :limit_front
      t.string  :limit_back
      t.string  :limit_right
      t.string  :limit_left
      t.string  :sefaz_certificate
      t.date    :sefaz_certificate_date
      t.date    :sefaz_certificate_validate_date
      t.integer :enterprise_typology_id
      t.string  :unit_code
      t.string  :notary_office
      t.date    :contract_date
      t.date    :code_date
      t.date    :contract_office
      t.date    :petition_date
      t.date    :signature_date
      t.date    :anoreg_date
      t.date    :devolution_date
      t.string  :requirement
      t.date    :requirement_date
      t.string  :declaratory_act_number
      t.date    :declaratory_act_date
      t.string  :rejection_number
      t.date    :rejection_date
      t.string  :endorsement
      t.integer :ownership_type_id
      t.string  :urbanistic_project

      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
