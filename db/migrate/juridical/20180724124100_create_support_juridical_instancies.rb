class CreateSupportJuridicalInstancies < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.juridical_instancies' do |t|
      t.string :name
      t.boolean :status, default: true

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
