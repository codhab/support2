class CreateSupportSeiLegalHypotheses < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.sei_legal_hypotheses' do |t|
      t.string  :code
      t.string  :name
      t.string  :sei_tranning_id
      t.string  :sei_id
      
      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
