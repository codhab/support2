require_dependency 'support/application_record'

module Support
  module Address
    class RegistryType < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.address_registry_types'
    end
  end
end
