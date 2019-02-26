class CreateSupportJuridicalComplainants < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.juridical_complainants' do |t|
      t.string  :name
      t.integer :user_id
      t.integer :legal_advice_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
