module Support
  module Candidate
    class CadastreIndication < ApplicationRecord
      self.table_name = 'sihab.candidate_cadastre_indications'

      audited
    end
  end
end
