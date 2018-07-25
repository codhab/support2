require_dependency 'support/application_record'

module Support
  module Protocol
    class Allotment < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.protocol_allotments'
    end
  end
end
