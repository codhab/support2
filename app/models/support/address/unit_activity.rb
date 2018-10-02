require_dependency 'support/application_record'

module Support
  module Address
    class UnitActivity < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.address_unit_activities'
    end
  end
end
