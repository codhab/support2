require_dependency 'support/application_record'

module Support
  module Social
    class Step  < ApplicationRecord # :nodoc:
      self.table_name = 'generic.social_steps'
    end
  end
end
