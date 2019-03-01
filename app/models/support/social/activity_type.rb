require_dependency 'support/application_record'

module Support
  module Social
    class ActivityType < ApplicationRecord # :nodoc:
      self.table_name = 'generic.social_activity_types'
    end
  end
end
