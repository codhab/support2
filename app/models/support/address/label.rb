require_dependency 'support/application_record'

module Support
  module Address
    class Label < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.address_labels'
    end
  end
end
