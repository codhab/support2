require_dependency 'support/application_record'

module Support
  module Address
    class UnitType < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.address_unit_types'
    end
  end
end
