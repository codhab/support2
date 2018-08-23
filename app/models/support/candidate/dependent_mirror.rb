require_dependency 'support/application_record'

module Support
  module Candidate
    class DependentMirror < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_dependent_mirrors'

      def presenter
        call_presenter('Support::Candidate::DependentPresenter', self)
      end
    end
  end
end
