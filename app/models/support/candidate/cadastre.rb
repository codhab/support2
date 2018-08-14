require_dependency 'support/application_record'

module Support
  module Candidate
    class Cadastre < ApplicationRecord
      self.table_name = 'sihab.candidate_cadastres'

      def presenter
        call_presenter('Support::Candidate::CadastrePresenter', self)
      end
    end
  end
end
