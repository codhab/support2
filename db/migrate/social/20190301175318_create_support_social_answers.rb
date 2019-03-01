class CreateSupportSocialAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table 'generic.social_answers' do |t|
      t.integer :cadastre_id
      t.text    :description
      t.integer :question_multiple_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
