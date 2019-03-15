require_dependency 'support/application_record'

module Support
  module Social
    class Answer  < ApplicationRecord # :nodoc:
      self.table_name = 'generic.social_answers'
      belongs_to :cadastre,         required: false
      belongs_to :question_multiple, required: false
    end
  end
end
