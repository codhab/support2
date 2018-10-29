require_dependency 'application_record'

module Support
  module Candidate
    class CadastreProcedural < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_cadastre_procedurals'

      belongs_to :procedural_type
      
      audited
    end
  end
end
