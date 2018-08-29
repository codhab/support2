require_dependency 'support/application_presenter'
module Support
  module Candidate
    class CadastrePresenter < ApplicationPresenter # :nodoc:
      def name_camel_case
        name.to_s.mb_chars.downcase.titleize
      end

      def cpf_formated
        cpf.present? ? cpf.to_s.format_cpf : 'Sem informação de cpf'
      end

      def current_situation
        cadastre_situations.order(created_at: :asc).last
      rescue StandardError
        'Sem informação de situação cadastral'
      end

      def current_situation_name
        current_situation.situation_type.name
      rescue StandardError
        'Sem informação de situação cadastral'
      end

      def current_procedural
        cadastre_procedurals.order(created_at: :asc).last
      rescue StandardError
        'Sem informação de situação de processual'
      end

      def current_procedural_name
        current_procedural.procedural_type.name
      rescue StandardError
        'Sem informação de situação de processual'
      end

      def age
        born.present? ? ((Date.today - born).to_i / 365.25).to_i : 'Sem informação de idade.'
      end

      def programs
        prog = program.name rescue nil
        sub_prog = "(#{sub_program.name})" if sub_program.present?
        result = prog.present? || sub_prog.present? ? "#{prog} #{sub_prog}" : 'Sem informação de programa'
      end
    end
  end
end
