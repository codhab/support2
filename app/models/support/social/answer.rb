require_dependency 'support/application_record'

module Support
  module Social
    class Answer  < ApplicationRecord # :nodoc:
      self.table_name = 'generic.social_answers'
    end
  end
end
