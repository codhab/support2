require_dependency 'support/application_record'

module Support
  module Candidate
    class Cadastre < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_cadastres'

      has_many :cadastre_pontuations
      has_many :cadastre_procedurals
      has_many :cadastre_situations
      has_many :cadastre_activities
      has_many :cadastre_indications

      def presenter
        call_presenter('Support::Candidate::CadastrePresenter', self)
      end

      def current_procedural
        self.cadastre_procedurals.order(created_at: :asc).last rescue nil
      end

      def current_situation
        self.cadastre_situations.order(created_at: :asc).last rescue nil
      end
    end
  end
end
