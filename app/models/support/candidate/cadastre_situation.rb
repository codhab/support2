require_dependency 'application_record'

module Support
  module Candidate
    class CadastreSituation < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_cadastre_situations'

      audited
    end
  end
end
