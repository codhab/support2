require_dependency 'support/application_record'

module Support
  module Social
    class QuestionMultiple  < ApplicationRecord # :nodoc:
      self.table_name = 'generic.social_question_multiples'

      belongs_to :question, required: false
    end
  end
end
