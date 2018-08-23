require_dependency 'support/application_record'

module Support
  module Sei
    class Operation < ApplicationRecord
      self.table_name = 'extranet.sei_operations'

      audited
    end
  end
end
