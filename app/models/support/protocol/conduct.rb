require_dependency 'support/application_record'

module Support
  module Protocol
    class Conduct < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.protocol_conducts'
    end
  end
end
