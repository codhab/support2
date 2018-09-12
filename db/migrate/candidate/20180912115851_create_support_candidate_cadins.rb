class CreateSupportCandidateCadins < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.candidate_cadins' do |t|
      t.string  :name
      t.string  :cpf
      t.string  :rg
      t.string  :rg_org
      t.integer :rg_uf_id
      t.date    :born
      t.string  :document_number
      t.string  :place_birth
      t.integer :city_id
      t.string  :address
      t.string  :cep
      t.date    :distribution_date
      t.decimal :percentege, precision: 8, scale: 2
      t.text    :observation
      t.boolean :spoll, default: false

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil      
    end
  end
end
