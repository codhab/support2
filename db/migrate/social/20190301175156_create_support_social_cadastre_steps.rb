class CreateSupportSocialCadastreSteps < ActiveRecord::Migration[5.2]
  def change
    create_table 'generic.social_cadastre_steps' do |t|
      t.integer :cadastre_id
      t.integer :step_id
      t.text    :description

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
