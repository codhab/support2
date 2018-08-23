require_dependency 'support/application_record'

module Support
  module Sei
    class Unit < ApplicationRecord
      self.table_name = 'extranet.sei_units'

      audited
    end
  end
end
