require_dependency 'support/application_record'

module Support
  module Candidate
    class Cadin < ApplicationRecord
      self.table_name = 'sihab.candidate_cadins'

      audited  
    end
  end
end
