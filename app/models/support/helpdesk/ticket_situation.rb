module Support
  module Helpdesk
    class TicketSituation < ApplicationRecord
      self.table_name = 'extranet.helpdesk_ticket_situations'
    end
  end
end
