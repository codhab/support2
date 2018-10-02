require_dependency 'support/application_record'

module Support
  module Attendance
    class DailyType < ApplicationRecord
      self.table_name = 'sihab.attendance_daily_types'

      audited
    end
  end
end
