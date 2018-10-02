require_dependency 'support/application_record'

module Support
  module Entity
    class Raffle < ApplicationRecord
      self.table_name = 'sihab.entity_raffles'

      audited
    end
  end
end
