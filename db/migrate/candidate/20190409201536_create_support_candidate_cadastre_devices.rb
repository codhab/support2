class CreateSupportCandidateCadastreDevices < ActiveRecord::Migration[5.2]
  def change
    create_table 'sihab.candidate_cadastre_devices' do |t|
      t.string  :user_id
      t.string  :push_id
      t.integer :cadastre_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end

    add_index 'sihab.candidate_cadastre_devices', :cadastre_id
  end
end
