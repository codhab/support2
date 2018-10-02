require_dependency 'support/application_presenter'

module Support
  module Candidate
    class CadastreInheritorPresenter < ApplicationPresenter # :nodoc:
      def name_camel_case
        self.name.to_s.mb_chars.downcase.titleize
      end

      def cpf_formated
        cpf.present? ? cpf.to_s.format_cpf : 'Sem informação'
      end

      def age
        born.present? ? ((Date.today - born).to_i / 365.25).to_i : 'Sem informação'
      end
    end
  end
end
