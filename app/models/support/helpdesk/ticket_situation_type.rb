require_dependency 'support/application_record'

module Support
  module Helpdesk
    class TicketSituationType < ApplicationRecord
      self.table_name = 'extranet.helpdesk_ticket_situation_types'      
    end
  end
end