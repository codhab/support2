require_dependency 'support/application_record'

module Support
  module Candidate
    class Cadastre < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_cadastres'

      has_many :cadastre_pontuations
      has_many :cadastre_situations
      has_many :cadastre_activities
      has_many :cadastre_indications
      has_many :cadastre_mirrors
      has_many :dependents

      def password=(value)
        self[:password] = BCrypt::Password.create(value)
      end

      def presenter
        call_presenter('Support::Candidate::CadastrePresenter', self)
      end

      def current_situation
        self.cadastre_situations.order(created_at: :asc).last.situation_type.name rescue nil
      end

      def current_valid_mirror
        self.cadastre_mirrors.order(created_at: :asc, status: true).last.id rescue nil
      end
      
      def current_convocation
        self.cadastre_convocations.order(created_at: :asc).where(status: true).last.convocation rescue nil
      end

      def enabled?
        self.current_situation.situation_type_id == 4
      end
    end
  end
end
