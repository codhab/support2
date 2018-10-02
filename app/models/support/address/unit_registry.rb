require_dependency 'support/application_record'

module Support
  module Address
    class UnitRegistry < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.address_unit_registries'
    end
  end
end
