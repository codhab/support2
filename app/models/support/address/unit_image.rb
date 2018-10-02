require_dependency 'support/application_record'

module Support
  module Address
    class UnitImage < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.address_unit_images'
    end
  end
end
