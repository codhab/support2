require_dependency 'support/application_record'

module Support
  module Candidate
    class OccurrenceTarget < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_occurrence_targets'
      
      audited
    end
  end
end


