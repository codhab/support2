require_dependency 'support/application_record'

module Support
  module Address
    class Enterprise < ApplicationRecord
      self.table_name = 'sihab.address_enterprises'

      audited
    end
  end
end
