require_dependency 'support/application_record'

module Support
  module Attendance
    class DailyPreferentialType < ApplicationRecord
      self.table_name = 'sihab.attendance_daily_preferential_types'

      audited
    end
  end
end
