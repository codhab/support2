require_dependency 'support/application_record'

module Support
  module Candidate
    class CadastreMirror < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_cadastre_mirrors'
      belongs_to :cadastre

      has_many :dependent_mirrors

      def presenter
        call_presenter('Support::Candidate::CadastreMirrorPresenter', self)
      end
    end
  end
end
