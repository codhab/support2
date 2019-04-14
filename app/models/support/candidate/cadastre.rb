require_dependency 'support/application_record'

module Support
  module Candidate
    class Cadastre < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_cadastres'
      
      audited

      belongs_to :program
      belongs_to :sub_program, class_name: "Support::Cadastre::Program", required: false
      
      has_many :cadastre_pontuations
      has_many :cadastre_situations
      has_many :cadastre_activities
      has_many :cadastre_indications
      has_many :cadastre_mirrors
      has_many :dependents
      
      validates :cpf, cpf: true, presence: true


      def password=(value)
        self[:password] = BCrypt::Password.create(value)
      end

      def presenter
        call_presenter('Support::Candidate::CadastrePresenter', self)
      end

      def age
        born.present? ? ((Date.today - born).to_i / 365.25).to_i : 'Sem informação de idade.'
      end
      
    end
  end
end
