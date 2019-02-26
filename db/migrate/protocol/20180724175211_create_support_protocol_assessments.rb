class CreateSupportProtocolAssessments < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.protocol_assessments' do |t|
      t.integer  :number
      t.integer  :year
      t.integer  :prefex
      t.string   :document_number
      t.string   :external_number
      t.string   :requesting_unit
      t.string   :external_agency
      t.string   :recipient
      t.string   :address
      t.string   :cpf
      t.string   :cnpj
      t.string   :sign_by
      t.string   :city
      t.text     :observation
      t.text     :description_subject
      t.integer  :id_old
      t.integer  :document_type_id
      t.integer  :subject_id
      t.integer  :user_id
      t.integer  :sector_id
      t.boolean  :external_petition
      t.integer  :responded_staff_id
      t.string   :email
      t.string   :telephone
      t.string   :celphone
      t.boolean  :finalized
      t.boolean  :responded
      t.datetime :finalized_date
      t.datetime :responded_date

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
