require_dependency 'support/application_record'

module Support
  module Social
    class Question  < ApplicationRecord # :nodoc:
      self.table_name = 'generic.social_questions'
    end
  end
end
