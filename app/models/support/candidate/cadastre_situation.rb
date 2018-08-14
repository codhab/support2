require_dependency 'application_record'

module Support
  module Candidate
    class CadastreSituation < ApplicationRecord
      self.table_name = 'sihab.candidate_cadastre_situations'
    end
  end
end
