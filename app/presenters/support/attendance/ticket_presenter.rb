require_dependency 'support/application_presenter'

module Support
  module Attendance
    class TicketPresenter < ApplicationPresenter

      def current_situation
        'iniciado'
      end

    end
  end
end