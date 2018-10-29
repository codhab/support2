require_dependency 'support/application_presenter'
require_dependency 'support/candidate/cadastre_situation'
require_dependency 'support/candidate/cadastre_procedural'

module Support
  module Candidate
    class CadastrePresenter < ApplicationPresenter # :nodoc:
      def name_camel_case
        name.to_s.mb_chars.downcase.titleize
      end

      def cpf_formated
        cpf.present? ? cpf.to_s.format_cpf : 'Sem informação de cpf'
      end

      # Situacao cadastral
      
      def current_situation
        Support::Candidate::CadastreSituation.where(cadastre_id: self.id).order(created_at: :asc).last
      rescue StandardError
        'Sem informação de situação cadastral'
      end
      
      def current_situation_name
        current_situation.situation_type.name
      rescue StandardError
        'Sem informação de situação cadastral'
      end
      
      # Situacao processual

      def current_procedural
        Support::Candidate::CadastreProcedural.where(cadastre_id: self.id).order(created_at: :asc).last
      rescue StandardError => e
        'Sem informação de situação de processual'
      end

      def current_procedural_name
        current_procedural.procedural_type.name
      rescue StandardError => e
        'Sem informação de situação de processual'
      end

      def age
        born.present? ? ((Date.today - born).to_i / 365.25).to_i : 'Sem informação de idade.'
      end

      def program_name
        prog = program.name rescue nil
        sub_prog = "(#{sub_program.name})" if sub_program.present?
        result = prog.present? || sub_prog.present? ? "#{prog} #{sub_prog}" : 'Sem informação de programa'
      end
    end
  end
end
