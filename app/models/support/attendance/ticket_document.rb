module Support
  module Attendance
    class TicketDocument < ApplicationRecord
      self.table_name = 'sihab.attendance_ticket_documents'

      audited
    end
  end
end