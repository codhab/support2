require_dependency 'support/application_record'

module Support
  module Protocol
    class Subject < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.protocol_subjects'
    end
  end
end
