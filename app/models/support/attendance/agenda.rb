require_dependency 'support/application_record'

module Support
  module Attendance
    class Agenda < ApplicationRecord
      self.table_name = 'sihab.attendance_agendas'

      has_many :agenda_schedules
    end
  end
end
