require_dependency 'support/application_record'

module Support
  module Address
    class UnitCadastre < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.address_unit_cadastres'
    end
  end
end
