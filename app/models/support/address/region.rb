require_dependency 'support/application_record'

module Support
  module Address
    class Region < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.address_regions'

      audited
    end
  end
end
