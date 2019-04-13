require_dependency 'support/application_record'

module Support
  module Attendance
    class TicketCategory < ApplicationRecord
      self.table_name = 'sihab.attendance_ticket_categories'

          
      def filter_program_id=(value)
        self[:filter_program_id] = value.to_s.split(';')
      end

      def filter_program_id
        value = self[:filter_program_id].to_a.join(';')
        value.class.is_a?(Array) ? value : [value]
      end
      
      def filter_situation_id=(value)
        self[:filter_situation_id] = value.to_s.split(';')
      end

      def filter_situation_id
        value = self[:filter_situation_id].to_a.join(';')
        value.class.is_a?(Array) ? value : [value]
      end

    end
  end
end
