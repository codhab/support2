require_dependency 'support/application_record'

module Support
  module Entity
    class CadastreCandidate < ApplicationRecord
      self.table_name = 'sihab.entity_cadastre_candidates'

      audited
    end
  end
end
