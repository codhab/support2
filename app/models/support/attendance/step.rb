require_dependency 'support/application_record'

module Support
  module Attendance
    class Step < ApplicationRecord
      self.table_name = 'sihab.attendance_steps'
    end
  end
end
