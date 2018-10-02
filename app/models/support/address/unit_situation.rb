require_dependency 'support/application_record'

module Support
  module Address
    class UnitSituation < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.address_unit_situations'
    end
  end
end
