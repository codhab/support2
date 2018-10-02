require_dependency 'support/application_record'

module Support
  module Address
    class Unit < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.address_units'
    end
  end
end
