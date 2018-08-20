require_dependency 'application_record'

module Support
  module Candidate
    class Convocation < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_convocations'
    end
  end
end
