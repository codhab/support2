require_dependency 'support/application_record'

module Support
  module Attendance
    class AgendaSituation < ApplicationRecord
      self.table_name = 'sihab.attendance_agenda_situations'
    end
  end
end
