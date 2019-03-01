class CreateSupportSocialQuestionMultiples < ActiveRecord::Migration[5.2]
  def change
    create_table 'generic.social_question_multiples' do |t|
      t.string  :name
      t.integer :question_id
      t.boolean :status, default: true

      t.timestamps

      t.boolean  :deleted, default: false
      t.datetime :deleted_at, default: nil
    end
  end
end
