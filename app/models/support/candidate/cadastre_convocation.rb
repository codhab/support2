require_dependency 'application_record'

module Support
  module Candidate
    class CadastreConvocation < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_cadastre_convocations'
    end
  end
end
