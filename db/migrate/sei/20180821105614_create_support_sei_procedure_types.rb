class CreateSupportSeiProcedureTypes < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.sei_procedure_types' do |t|
      t.string  :code
      t.string  :name
      t.string  :sei_id
      t.string  :sei_tranning_id
      t.boolean :legal, default: false
      t.integer :legal_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
