require_dependency 'support/application_record'

module Support
  module Common
    class ActivityType < ApplicationRecord
      self.table_name = 'common.activity_types'
    end
  end
end
