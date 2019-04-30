class CreateSupportCandidateAdditionalPontuations < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.candidate_additional_pontuations' do |t|
      t.string  :name
      t.text    :description
      t.float   :value  
      t.boolean :status, default: true

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil      
    end
  end
end
