require_dependency 'support/application_record'

module Support
  module Attendance
    class TicketCategory < ApplicationRecord
      self.table_name = 'sihab.attendance_ticket_categories'
    end
  end
end
