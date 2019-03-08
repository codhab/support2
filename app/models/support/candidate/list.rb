require_dependency 'support/application_record'

module Support
  module Candidate
    class List < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_lists'
      
      audited
    end
  end
end
