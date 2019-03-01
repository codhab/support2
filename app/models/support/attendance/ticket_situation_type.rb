require_dependency 'support/application_record'

module Support
  module Attendance
    class TicketSituationType < ApplicationRecord
      self.table_name = 'sihab.attendance_ticket_situation_types'

    end
  end
end
