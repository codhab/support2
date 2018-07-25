require_dependency 'support/application_record'

module Support
  module Protocol
    class AttachDocument < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.protocol_attach_documents'
    end
  end
end
