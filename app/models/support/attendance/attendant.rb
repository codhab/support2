require_dependency 'support/application_record'

module Support
  module Attendance
    class Attendant < ApplicationRecord
      self.table_name = 'sihab.attendance_attendants'

      audited
    end
  end
end
