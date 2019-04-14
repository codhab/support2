require_dependency 'support/application_presenter'
require_dependency 'support/candidate/cadastre_situation'
require_dependency 'support/candidate/cadastre_procedural'
require_dependency 'support/application_presenter'

module Support
  module Candidate
    class CadastrePresenter < ApplicationPresenter # :nodoc:
      
      def short_name
        short = self.name.split(' ')
        "#{short[0].humanize} #{short[-1].humanize}"
      end
      
      def camel_case_name
        name.to_s.mb_chars.downcase.titleize
      end

      def current_situation
        Support::Candidate::CadastreSituation.where(cadastre_id: self.id).order(created_at: :asc).last
      rescue Exception => e
        'Sem informação de situação cadastral'
      end

      def current_situation_id
        current_situation.situation_type.id
      end
      
      def current_situation_name
        current_situation.situation_type.name.humanize
      rescue StandardError
        'Sem informação de situação cadastral'
      end

      def current_convocation
        Support::Candidate::CadastreConvocation.where(cadastre_id: self.id, status: true).order(created_at: :asc).last
      end

      def current_convocation_id
        current_convocation.id
      end
      
      
      def current_program_name
        prog = program.name rescue nil
        sub_prog = "(#{sub_program.name})" if sub_program.present?
        result = prog.present? || sub_prog.present? ? "#{prog} #{sub_prog}" : 'Sem informação de programa'
      end

    end
  end
end
