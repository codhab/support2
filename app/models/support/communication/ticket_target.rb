require_dependency 'support/application_record'

module Support
  module Communication
    class TicketTarget < ApplicationRecord
      self.table_name = 'extranet.communication_ticket_targets'
    end
  end
end
