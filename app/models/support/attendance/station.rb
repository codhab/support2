require_dependency 'support/application_record'

module Support
  module Attendance
    class Station < ApplicationRecord
      self.table_name = 'sihab.attendance_stations'

      audited
    end
  end
end
