require_dependency 'application_record'

module Support
  module Candidate
    class CadastrePontuation < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_cadastre_pontuations'

      audited
    end
  end
end
