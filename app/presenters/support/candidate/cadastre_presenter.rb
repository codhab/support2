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

      def current_pontuation
        Support::Candidate::CadastrePontuation.where(cadastre_id: self.id).order(created_at: :asc).last
      end
      
      def current_pontuation_total
        current_pontuation.total rescue nil
      end

      def last_indication
        Support::Candidate::CadastreIndication.where(cadastre_id: self.id).order(created_at: :asc).last
      end

      def current_mirror
        Support::Candidate::CadastreMirror.where(cadastre_id: self.id, status: true).order(created_at: :asc).last
      end

      def current_convocation_id
        current_convocation.id
      end

      def age
        ((Date.today - self.born).to_i / 365.25).to_i
      end

      def is_older?
        (age >= 60) rescue false
      end

      def current_program_name
        prog = program.name rescue nil
        sub_prog = "(#{sub_program.name})" if sub_program.present?
        result = prog.present? || sub_prog.present? ? "#{prog} #{sub_prog}" : 'Sem informação de programa'
      end

      def special_condition_family?
        (self.special_condition || (dependents.where(special_condition: true).present?)) 
      end

      def special_condition_format
        
        if special_condition_family? 
          if special_condition
            'Titular possui condição especial'
          else 
            'Dependente possui condição espcial'
          end 
        else
          'Não possui condição especial'
        end

      end

      def older_family?
        return true if is_older?
        return true if dependents.where(born: (Date.today - 60.years)..Date.today).present?

        false
      end


      def lists
        list = []
        
        if older_family?
          list << 'old'
        end

        if program_id == 1
          list << 'rii'
        end
        
        if program_id == 2
          list << 'rie'
        end

        if program_id == 4
          list << 'vul'
        end

        if special_condition_family?
          list << 'special'
        end
        
        list
      end

      def list_name(list)
        case list
        when 'rii'
          'RII'
        when 'rie'
          'RIE'
        when 'vul'
          'VULNERÁVEL'
        when 'special'
          'DEFICIENTE'
        end
      end

    end
  end
end
