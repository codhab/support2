class CreateSupportPivotalPermissionProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table 'extranet.pivotal_permission_profiles' do |t|
      t.string :name
      t.text   :description
      t.text   :permission_ids, array: true

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at
    end
  end
end
