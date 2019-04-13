require_dependency 'support/application_record'

module Support
  module Candidate
    class DependentMirror < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_dependent_mirrors'

      belongs_to :kinship, class_name: "Support::Common::Kinship"
      
      def age
        born.present? ? ((Date.today - born).to_i / 365.25).to_i : nil
      end

      def presenter
        call_presenter('Support::Candidate::DependentPresenter', self)
      end
    end
  end
end
