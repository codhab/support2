require_dependency 'support/application_record'

module Support
  module Helpdesk
    class TicketActivity < ApplicationRecord
      self.table_name = 'extranet.helpdesk_ticket_activities'
    end
  end
end
