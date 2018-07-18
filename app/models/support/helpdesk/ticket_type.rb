require_dependency 'support/application_record'

module Support
  module Helpdesk
    class TicketType < ApplicationRecord
      self.table_name = 'extranet.helpdesk_ticket_types'
    end
  end
end
