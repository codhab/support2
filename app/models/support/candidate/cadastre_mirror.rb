require_dependency 'support/application_record'

module Support
  module Candidate
    class CadastreMirror < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_cadastre_mirrors'
      
      belongs_to :cadastre

      has_many :dependent_mirrors
      
      validates :cpf, cpf: true, presence: true

      def changed(field)
        (self.cadastre.send(field) != self.send(field))
      end

      def changed_value(field)
        value = self.cadastre.send(field)
        (!value.present? || value.blank?) ? "novo valor" : value
      end

      def age
        born.present? ? ((Date.today - born).to_i / 365.25).to_i : 'Sem informação de idade.'
      end

      def presenter
        call_presenter('Support::Candidate::CadastreMirrorPresenter', self)
      end
    end
  end
end
