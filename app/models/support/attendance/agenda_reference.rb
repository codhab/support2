require_dependency 'support/application_record'

module Support
  module Attendance
    class AgendaReference < ApplicationRecord
      self.table_name = 'sihab.attendance_agenda_references'
    end
  end
end
