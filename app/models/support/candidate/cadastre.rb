require_dependency 'support/application_record'

module Support
  module Candidate
    class Cadastre < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_cadastres'
      has_many :cadastre_pontuations

      def presenter
        call_presenter('Support::Candidate::CadastrePresenter', self)
      end
    end
  end
end
