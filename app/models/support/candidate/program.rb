require_dependency 'application_record'

module Support
  module Candidate
    class Program < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_programs'

      audited
    end
  end
end
