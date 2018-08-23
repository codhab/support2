require_dependency 'application_record'

module Support
  module Candidate
    class ProceduralType < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_procedural_types'

      audited
    end
  end
end
