require_dependency 'support/application_record'

module Support
  module Attendance
    class TicketCategory < ApplicationRecord
      self.table_name = 'sihab.attendance_ticket_categories'

          
      def filter_program_id=(value)
        self[:filter_program_id] = value.to_s.split(',')
      end

      
      def filter_situation_id=(value)
        self[:filter_situation_id] = value.to_s.split(',')
      end


    end
  end
end
