require_dependency 'support/application_record'

module Support
  module Address
    class UnitUseType < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.address_unit_use_types'
    end
  end
end
