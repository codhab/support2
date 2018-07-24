class CreateSupportJuridicalAdviceTypes < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'extranet.juridical_advice_types' do |t|
      t.string  :name
      t.text    :description
      t.boolean :status, default: true

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
