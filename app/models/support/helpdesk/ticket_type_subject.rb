require_dependency 'support/application_record'

module Support
  module Helpdesk
    class TicketTypeSubject < ApplicationRecord
      self.table_name = 'extranet.helpdesk_ticket_type_subjects'
    end
  end  
end
