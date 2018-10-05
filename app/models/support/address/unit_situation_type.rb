require_dependency 'support/application_record'

module Support
  module Address
    class UnitSituationType < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.address_unit_situation_types'

      audited
    end
  end
end
