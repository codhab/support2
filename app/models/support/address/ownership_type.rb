require_dependency 'support/application_record'

module Support
  module Address
    class OwnershipType < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.address_ownership_types'
    end
  end
end
