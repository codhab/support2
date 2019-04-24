require_dependency 'application_record'

module Support
  module Candidate
    class AdditionalPontuation < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_additional_pontuations'

      audited

    end
  end
end
