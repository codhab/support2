require_dependency 'support/application_record'

module Support
  module Common
    class City < ApplicationRecord
      self.table_name = 'common.cities'

      belongs_to :state

      scope :by_state, -> (state_id) {
        where(state_id: state_id)
      }

      scope :federal_district, -> { joins(:state)
                                  .where(state_id: 7)
                                  .order(:name) }
    end
  end
end
