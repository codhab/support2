require_dependency 'application_record'

module Support
  module Entity
    class CadastreCandidate < ApplicationRecord
      self.table_name = 'sihab.entity_cadastre_candidates'
    end
  end
end
