class CreateSupportEntityCadastreMembers < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.entity_cadastre_members' do |t|
      t.integer  :cadastre_id
      t.string   :name
      t.string   :cpf
      t.string   :rg
      t.string   :rg_org
      t.integer  :rg_uf_id
      t.integer  :city_id
      t.string   :address
      t.string   :cep
      t.string   :email
      t.date     :born
      t.string   :telephone
      t.string   :telephone_optional
      t.string   :cell_phone
      t.string   :certificate_civil_criminal
      t.string   :photo
      t.boolean  :status, default: true
      t.integer  :job_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
