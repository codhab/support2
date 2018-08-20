require_dependency 'application_record'

module Support
  module Candidate
    class SubProgram < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_sub_programs'
    end
  end
end
