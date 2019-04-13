require_dependency 'support/application_record'

module Support
  module Attendance
    class TicketStep < ApplicationRecord
      self.table_name = 'sihab.attendance_ticket_steps'

      audited
    end
  end
end
