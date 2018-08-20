require_dependency 'support/application_record'

module Support
  module Candidate
    class CadastreActivity < ApplicationRecord
      self.table_name = 'sihab.candidate_cadastre_activities'

      audited
    end
  end
end
