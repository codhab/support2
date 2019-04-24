require_dependency 'support/application_record'

module Support
  module Candidate
    class Dependent < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_dependents'

       belongs_to :kinship, class_name: 'Support::Common::Kinship', required: false

      def presenter
        call_presenter('Support::Candidate::DependentPresenter', self)
      end

      def age
        born.present? ? ((Date.today - born).to_i / 365.25).to_i : 'Sem informação de idade.'
      end
    end
  end
end
