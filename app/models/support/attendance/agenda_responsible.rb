require_dependency 'support/application_record'

module Support
  module Attendance
    class AgendaResponsible < ApplicationRecord
      self.table_name = 'sihab.attendance_agenda_responsibles'
    end
  end
end
