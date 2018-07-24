class CreateSupportJuridicalLegalAdvices < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.juridical_legal_advices' do |t|
      t.string  :process_number
      t.string  :agency
      t.integer :lawsuit_id
      t.decimal :lawsuit_value
      t.integer :instancy_place_id
      t.integer :document_type_id
      t.integer :responsible_lawyer_id
      t.text    :description_complement
      t.boolean :status, default: true
      t.date    :start_date
      t.date    :end_date
      t.integer :process_type_id
      t.string  :suitor
      t.boolean :verdict
      t.decimal :condemnation_value
      t.string  :assessment_number
      t.integer :staff_id
      t.integer :advice_type_id
      t.boolean :free_justice
      t.integer :probability
      t.decimal :procedural_costs
      t.decimal :judicial_deposit

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
