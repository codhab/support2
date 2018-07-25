require_dependency 'support/application_record'

module Support
  module Protocol
    class Assessment < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.protocol_assessments'
    end
  end
end
