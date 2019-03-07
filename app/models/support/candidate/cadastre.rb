require_dependency 'support/application_record'

module Support
  module Candidate
    class Cadastre < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_cadastres'

      has_many :cadastre_pontuations
      has_many :cadastre_procedurals

      def presenter
        call_presenter('Support::Candidate::CadastrePresenter', self)
      end

      def current_procedural
       self.cadastre_procedurals.last rescue nil
      end
    end
  end
end
