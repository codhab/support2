require_dependency 'application_record'

module Support
  module Entity
    class Raffle < ApplicationRecord
      self.table_name = 'sihab.entity_raffles'
    end
  end
end
