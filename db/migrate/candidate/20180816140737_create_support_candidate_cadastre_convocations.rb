class CreateSupportCandidateCadastreConvocations < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'sihab.candidate_cadastre_convocations' do |t|
      t.integer :cadastre_id
      t.integer :convocation_id
      t.boolean :status, default: true
      t.integer :user_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end