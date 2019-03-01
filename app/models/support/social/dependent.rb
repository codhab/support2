require_dependency 'support/application_record'

module Support
  module Social
    class Dependent  < ApplicationRecord # :nodoc:
      self.table_name = 'generic.social_dependents'
    end
  end
end
