class CreateSupportSeiProcedures < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.sei_procedures' do |t|
      t.integer :operation_id
      t.string  :sei_document_number
      t.string  :sei_procedure_number
      t.boolean :tranning, default: true
      t.integer :model_target_id
      t.string  :model_target_name
      t.integer :user_id
      t.string  :cpf
      t.string  :cnpj
      t.text    :observation

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
