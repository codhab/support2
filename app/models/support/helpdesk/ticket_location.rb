require_dependency 'application_record'

module Support
  module Helpdesk
    class TicketLocation < ApplicationRecord
      self.table_name = 'extranet.helpdesk_ticket_locations'
    end
  end
end
