class CreateSupportCandidateCadastreConvocations < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table 'sihab.candidate_cadastre_convocations' do |t|
      t.integer :cadastre_id
      t.integer :convocation_id
      t.boolean :status, default: true
      t.integer :user_id
      t.text    :observation
      t.boolean :computer, default: false

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end

    add_index 'sihab.candidate_cadastre_convocations', :cadastre_id
    add_index 'sihab.candidate_cadastre_convocations', :convocation_id
  end
end
