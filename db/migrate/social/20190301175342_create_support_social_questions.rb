class CreateSupportSocialQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table 'generic.social_questions' do |t|
      t.string  :name
      t.boolean :status, default: true
      t.integer :question_type_id

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
