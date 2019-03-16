require_dependency 'support/application_record'

module Support
  module Attendance
    class EventualCadastre < ApplicationRecord
      self.table_name = 'sihab.attendance_eventual_cadastres'

      audited
    end
  end
end
