require_dependency 'support/application_record'

module Support
  module Entity
    class RaffleGroup < ApplicationRecord
      self.table_name = 'sihab.entity_raffle_groups'
    end
  end
end
