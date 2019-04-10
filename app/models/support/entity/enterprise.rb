require_dependency 'support/application_record'

module Support
  module Entity
    class Enterprise < ApplicationRecord
      self.table_name = 'sihab.address_enterprises'
    end
  end
end
