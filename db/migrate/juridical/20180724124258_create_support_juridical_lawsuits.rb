class CreateSupportJuridicalLawsuits < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.juridical_lawsuits' do |t|
      t.string :name
      t.text :description
      t.boolean :status, default: true

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
