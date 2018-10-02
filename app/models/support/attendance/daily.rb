require_dependency 'support/application_record'

module Support
  module Attendance
    class Daily < ApplicationRecord
      self.table_name = 'sihab.attendance_dailies'

      audited
    end
  end
end
