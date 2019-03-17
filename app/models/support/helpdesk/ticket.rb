require_dependency 'support/application_record'

module Support
  module Helpdesk
    class Ticket < ApplicationRecord
      self.table_name = 'extranet.helpdesk_tickets'

      audited
    end
  end
end
