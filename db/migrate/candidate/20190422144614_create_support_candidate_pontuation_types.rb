class CreateSupportCandidatePontuationTypes < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.candidate_pontuation_types' do |t|

      t.string  :name
      t.text    :description
      t.boolean :status, defaul: true

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil           
    end
  end
end
