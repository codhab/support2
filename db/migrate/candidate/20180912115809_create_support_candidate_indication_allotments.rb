class CreateSupportCandidateIndicationAllotments < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.candidate_indication_allotments' do |t|
      t.string  :name 
      t.text    :description
      t.integer :enterprise_id
      t.integer :ticket_id
      t.integer :user_id
      t.decimal :income_start, precision: 8, scale: 2
      t.decimal :income_end, precision: 8, scale: 2
      t.integer :program_id

      t.boolean :evaluation_entity, default: false
      t.integer :evaluation_entity_id
      
      t.boolean :filter_city, default: false
      t.integer :filter_city_id

      t.boolean :ignore_active_indicated, default: false
      t.boolean :ignore_occurence,        default: false
      
      t.integer :demand,     default: 0
      t.integer :rii,        default: 0
      t.integer :rie,        default: 0
      t.integer :old,        default: 0
      t.integer :special,    default: 0
      t.integer :vulnerable, default: 0

      t.boolean  :status,  default: true
      t.boolean  :process, default: false
      t.datetime :process_at
      t.integer  :process_user_id

      t.boolean  :only_extract, default: false

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil      
    end
  end
end
