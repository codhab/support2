require_dependency 'support/application_record'

module Support
  module Candidate
    class  CadastreInheritor < ApplicationRecord
      self.table_name = 'sihab.candidate_cadastre_inheritors'

      audited
    end
  end
end
