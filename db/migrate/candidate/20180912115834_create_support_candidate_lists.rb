class CreateSupportCandidateLists < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.candidate_lists' do |t|
      t.string  :name
      t.text    :description
      t.text    :sql

      t.text    :view_columns
      
      t.boolean :detail, default: false
      t.string  :detail_column
      t.string  :detail_field_param
      t.string  :detail_url
      t.boolean :detail_target_blank, default: true

      t.boolean :filter, default: false
      t.text    :filter_fields
      t.text    :filter_field_labels

      t.boolean :row_count, default: true
      t.boolean :status,    default: false
      
      t.integer :program_id
      t.integer :sub_program_id

      t.boolean :external,    default: false 
      t.boolean :extract_xls, default: false
      t.boolean :extract_csv, default: false
      
      t.string :slug

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil      
    end
  end
end
