require_dependency 'support/application_record'

module Support
  module Helpdesk
    class TicketTypeUser < ApplicationRecord
      self.table_name = 'extranet.helpdesk_ticket_type_users'
    end
  end  
end
