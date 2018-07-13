require_dependency 'application_record'

module Support
  module Entity
    class RaffleGroupUnit < ApplicationRecord
      self.table_name = 'sihab.entity_raffle_group_units'
    end
  end
end
