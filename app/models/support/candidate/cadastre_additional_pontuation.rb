require_dependency 'application_record'

module Support
  module Candidate
    class CadastreAdditionalPontuation < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_cadastre_additional_pontuations'

      audited

    end
  end
end
