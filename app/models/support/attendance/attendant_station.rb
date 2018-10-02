require_dependency 'support/application_record'

module Support
  module Attendance
    class AttendantStation < ApplicationRecord
      self.table_name = 'sihab.attendance_attendant_stations'

      audited
    end
  end
end
