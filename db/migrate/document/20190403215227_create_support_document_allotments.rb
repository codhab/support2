class CreateSupportDocumentAllotments < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.document_allotments' do |t|
      t.integer  :category_id
      t.string   :name
      t.boolean  :draft, default: true
      t.integer  :template_field_id
      t.integer  :template_id
      t.integer  :user_id
      t.integer  :authenticate_id
      t.boolean  :authenticate, default: false
      t.datetime :authenticate_at

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
