require_dependency 'support/application_presenter'
module Support
  module Candidate
    class CadastrePresenter < ApplicationPresenter

      def name_camel_case
        self.name.to_s.mb_chars.downcase.titleize
      end

      def cpf_formated
        self.cpf.to_s.format_cpf
      end

      def current_situation
        self.cadastre_situations.order(created_at: :asc).last rescue nil
      end

      def current_situation_name
        current_situation.situation_type.name rescue nil
      end
    end
  end
end