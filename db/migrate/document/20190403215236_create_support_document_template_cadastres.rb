class CreateSupportDocumentTemplateCadastres < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.document_template_cadastres' do |t|
      t.integer  :allotment_id
      t.integer  :cadastre_id 
      t.text     :template_id, array: true
      t.jsonb    :json_content, null: false, default: '{}'
      t.boolean  :rectified, default: false
      t.integer  :rectified_user_id
      t.datetime :rectified_at
      t.integer  :rectified_allotment_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil      
    end
  end
end
