class CreateSupportDocumentTemplateFields < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.document_template_fields' do |t|
      t.integer :template_cadastre_id
      t.string  :name
      t.string  :label
      t.integer :field_type, default: 0
      t.integer :size

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
