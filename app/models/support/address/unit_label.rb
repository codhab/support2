require_dependency 'support/application_record'

module Support
  module Address
    class UnitLabel < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.address_unit_labels'
    end
  end
end
