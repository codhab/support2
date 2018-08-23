require_dependency 'support/application_record'

module Support
  module Candidate
    class Dependent < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_dependents'

      def presenter
        call_presenter('Support::Candidate::DependentPresenter', self)
      end
    end
  end
end
