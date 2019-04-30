require_dependency 'support/application_record'

module Support
  module Attendance
    class TicketCategoryStep < ApplicationRecord
      self.table_name = 'sihab.attendance_ticket_category_steps'

      has_many :step_documents, foreign_key: :category_step_id
    end
  end
end
