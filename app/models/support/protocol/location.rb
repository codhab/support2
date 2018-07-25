require_dependency 'support/application_record'

module Support
  module Protocol
    class Location < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.protocol_locations'
    end
  end
end
