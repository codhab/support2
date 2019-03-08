require_dependency 'support/application_record'

module Support
  module Candidate
    class IndicationAllotment < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_indication_allotments'
      
      audited
    end
  end
end
