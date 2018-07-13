require_dependency 'application_record'

module Support
  module Entity
    class ProvisonalCandidate < ApplicationRecord
      self.table_name = 'sihab.entity_provisonal_candidates'
    end
  end
end
