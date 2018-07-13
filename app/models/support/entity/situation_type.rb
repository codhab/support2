require_dependency 'support/application_record'

module Support
  module Entity
    class SituationType < ApplicationRecord
      self.table_name = 'sihab.entity_situation_types'
    end
  end
end
