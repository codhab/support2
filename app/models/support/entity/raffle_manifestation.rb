require_dependency 'support/application_record'

module Support
  module Entity
    class RaffleManifestation < ApplicationRecord
      self.table_name = 'sihab.entity_raffle_manifestations'
    end
  end
end
