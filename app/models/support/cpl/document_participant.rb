require_dependency 'support/application_record'

module Support
  module Cpl
    class DocumentParticipant < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.cpl_document_participants'
    end
  end
end
