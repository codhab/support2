class CreateSupportContractTypes < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.person_contract_types' do |t|
      t.string :name
      t.boolean :status, default: false
      
      t.timestamps

      t.boolean :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
