require_dependency 'application_record'

module Support
  module Candidate
    class PontuationType < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_pontuation_types'

      audited

    end
  end
end
