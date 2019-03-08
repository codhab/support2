require_dependency 'support/application_record'

module Support
  module Candidate
    class IndicationActivityType < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_indication_activity_types'
      
      audited
    end
  end
end
