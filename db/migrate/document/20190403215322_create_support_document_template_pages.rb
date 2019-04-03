class CreateSupportDocumentTemplatePages < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.document_template_pages' do |t|

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil      
    end
  end
end
