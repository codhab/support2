class CreateSupportPersonStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.person_staffs' do |t|
      t.string  :code
      t.string  :name
      t.string  :cpf
      t.string  :rg
      t.string  :rg_org
      t.string  :blood_type
      t.date    :born, default: nil
      t.integer :born_uf_id
      t.integer :gender_id
      t.string  :avatar_data
      t.string  :personal_image_data
      t.string  :branch_line
      t.string  :curriculum_data
      t.string  :email
      t.string  :private_email
      t.text    :bio
      t.time    :start_hour, default: nil
      t.time    :end_hour, default: nil
      t.boolean :weekend_access, default: false
      t.date    :contract_date, default: nil
      t.date    :shutdown_date, default: nil
      t.boolean :status, default: false
      t.boolean :administrator, default: false
      t.string  :password
      t.integer :job_id
      t.boolean :terms_use, default: false
      t.boolean :introduce, default: false
      t.integer :civil_state_id
      t.string  :birth_place
      t.integer :contract_type_id
      t.string  :address
      t.string  :address_complement
      t.string  :burgh
      t.integer :state_id
      t.integer :city_id
      t.string  :cep
      t.string  :telephone
      t.string  :celphone
      t.string  :ctps_number
      t.string  :ctps_serial
      t.integer :ctps_uf_id
      t.string  :pis_pasep_number
      t.date    :pis_pasep_date, default: nil
      t.string  :electoral_title_number
      t.string  :electoral_title_zone
      t.string  :electoral_title_section
      t.integer :electoral_title_uf_id
      t.string  :bank_number
      t.string  :bank_agency_number
      t.string  :bank_account_number
      t.string  :spouse_name
      t.integer :education_background_id
      t.string  :graduation
      t.string  :mobile_user_token
      t.string  :mobile_push_token
      t.string  :resolution
      t.date    :resolution_date, default: nil
      t.integer :sector_current_id
      t.integer :sector_origin_id
      t.boolean :blocked, default: false

      t.timestamps
      
      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
