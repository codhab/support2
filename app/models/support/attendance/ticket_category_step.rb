require_dependency 'support/application_record'

module Support
  module Attendance
    class TicketCategoryStep < ApplicationRecord
      self.table_name = 'sihab.attendance_ticket_category_steps'
    end
  end
end
