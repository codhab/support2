require_dependency 'support/application_record'

module Support
  module Protocol
    class DigitalDocument < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.protocol_digital_documents'
    end
  end
end
