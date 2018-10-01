require_dependency 'support/application_record'

module Support
  module Communication
    class Ticket < ApplicationRecord
      self.table_name = 'extranet.communication_tickets'
    end
  end
end
