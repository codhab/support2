require_dependency 'application_record'

module Support
  module Candidate
    class CadastreProcedural < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_cadastre_procedurals'
    end
  end
end
