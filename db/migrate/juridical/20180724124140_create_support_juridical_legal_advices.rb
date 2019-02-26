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
      t.integer :process_type
      t.decimal :condemnation_value, precision: 8, scale: 2
      t.decimal :lawsuit_value, precision: 8, scale: 2
      t.string  :assessment_number
      t.integer :user_id
      t.integer :advice_type_id
      t.boolean :free_justice, default: false
      t.boolean :veredict
      t.integer :probability
      t.decimal :procedural_costs, precision: 8, scale: 2
      t.decimal :judicial_deposit, precision: 8, scale: 2
      t.boolean :status, default: true

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
