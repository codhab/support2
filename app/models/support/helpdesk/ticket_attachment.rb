require_dependency 'support/application_record'

module Support
  module Helpdesk
    class TicketAttachment < ApplicationRecord
      self.table_name = 'extranet.helpdesk_ticket_attachments'

      audited
    end
  end
end
