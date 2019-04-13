require_dependency 'support/application_policy'

module Support
  module Attendance
    class CadastrePolicy < ApplicationPolicy

      def new_ticket_allowed?
        tickets = Support::Attendance::Ticket.where(cadastre_id: self.id, status: true)

        return false if tickets.present?

        true
      end

      def category_allowed?(category_id)
        categories_allowed.map(&:id).include?(category_id)
      end

      def categories_allowed
        @categories = []

        ticket_categories = Support::Attendance::TicketCategory.status_active.all

        ticket_categories.each do |category|

          # Se atendimento possui prazo e está fora do período configurado 
          next if (category.due && !(category.started_at <= Date.current && category.ended_at >= Date.current)) 
          
     
          if category.filter_situation && category.filter_situation_id.map { |x| x.to_i }.include?(self.presenter.current_situation_id)
            @categories << category.id
          end
          
          if category.filter_convocation && category.filter_convocation_id.map { |x| x.to_i }.include?(self.presenter.current_convocation_id)
            @categories << category.id
          end

          if category.filter_program && category.filter_program_id.map { |x| x.to_i }.include?(self.program_id)
            @categories << category.id
          end
          
          if category.filter_sub_program && category.filter_sub_program_id.map { |x| x.to_i }.include?(self.sub_program_id)
            @categories << category.id
          end
          
          if category.filter_cadastre && category.filter_cadastre_id.map { |x| x.to_i }.include?(self.id)
            @categories << category.id
          end

          # TODO: filtro por SQL em categoria de atendimentos não implementado
          # if category.filter_sql
          # end
        end

        Support::Attendance::TicketCategory.where(id: @categories.uniq)
      end
      
    end
  end
end