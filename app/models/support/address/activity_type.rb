require_dependency 'support/application_record'

module Support
  module Address
    class ActivityType < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.address_activity_types'

      audited
    end
  end
end
