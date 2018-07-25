require_dependency 'support/application_record'

module Support
  module Protocol
    class DocumentType < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.protocol_document_types'
    end
  end
end
