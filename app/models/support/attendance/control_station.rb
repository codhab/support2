require_dependency 'support/application_record'

module Support
  module Attendance
    class ControlStation < ApplicationRecord
      self.table_name = 'sihab.attendance_control_stations'

      has_many :agenda_schedules
    end
  end
end
