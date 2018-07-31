require_dependency 'support/application_record'

module Support
  module Attendance
    class AgendaSchedule < ApplicationRecord
      self.table_name = 'sihab.attendance_agenda_schedules'
    end
  end
end
