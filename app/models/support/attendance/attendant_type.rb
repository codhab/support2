require_dependency 'support/application_record'

module Support
  module Attendance
    class AttendantType < ApplicationRecord
      self.table_name = 'sihab.attendance_attendant_types'

      audited
    end
  end
end
