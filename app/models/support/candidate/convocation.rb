require_dependency 'application_record'

module Support
  module Candidate
    class Convocation < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_convocations'

      audited

      def full_name
        "#{self.id} - #{self.name.to_s.downcase}"
      end
    end
  end
end
