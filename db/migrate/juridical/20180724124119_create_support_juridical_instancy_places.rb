class CreateSupportJuridicalInstancyPlaces < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.juridical_instancy_places' do |t|
      t.string  :name
      t.boolean :status, default: true
      t.integer :instancy_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
