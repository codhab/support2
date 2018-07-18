require_dependency 'support/application_record'

module Support
  module Helpdesk
    class TicketRating < ApplicationRecord
      self.table_name = 'extranet.helpdesk_ticket_ratings'
    end
  end
end