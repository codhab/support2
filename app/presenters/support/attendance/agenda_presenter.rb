require_dependency 'support/application_presenter'

module Support
  module Attendance
    class AgendaPresenter < ApplicationPresenter # :nodoc:
      
      def start_date
        (Date.today + 2.days).format_date
      end
      
      def end_date
        self.ended_at.format_date
      end
      
      def disable_days
        days = []
        # 6 domingo, 0 sabado
        
        days << 6 if self.sunday 
        days << 0 if self.saturday

        days.join(",")
      end
      
      def dates_disabled
        self.disable_days.split(";")
      end

    end
  end
end
