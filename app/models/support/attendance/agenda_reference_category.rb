require_dependency 'support/application_record'

module Support
  module Attendance
    class AgendaReferenceCategory < ApplicationRecord
      self.table_name = 'sihab.attendance_agenda_reference_categories'
    end
  end
end
