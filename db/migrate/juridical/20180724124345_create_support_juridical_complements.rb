class CreateSupportJuridicalComplements < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.juridical_complements' do |t|
      t.integer :document_type_id
      t.integer :lawsuit_id
      t.integer :instancy_place_id
      t.date    :distribution_date
      t.date    :deadline
      t.integer :days
      t.date    :end_date
      t.text    :complement
      t.integer :responsible_lawyer_id
      t.integer :advice_type_id
      t.string  :attachment
      t.boolean :status, default: true
      t.integer :complement_father_id
      t.integer :legal_advice_id
      t.integer :staff_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
