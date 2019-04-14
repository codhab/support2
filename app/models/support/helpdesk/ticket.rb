require_dependency 'support/application_record'

module Support
  module Helpdesk
    class Ticket < ApplicationRecord
      self.table_name = 'extranet.helpdesk_tickets'

      audited
  
      scope :closed, -> {
        where(situation_type_id: [4,5,6])
      }

      scope :opened, -> {
        not.closed
      }
      
    end
  end
end
