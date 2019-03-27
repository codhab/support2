module Support
  module Attendance
    class TicketService
      
      attr_accessor :cadastre, :cadastre_mirror, :ticket, :errors

      def initialize(cadastre_id: nil, ticket_id: nil)
        @cadastre = Support::Candidate::Cadastre.find_by(id: cadastre_id)
        @ticket   = Support::Attendance::Ticket.find_by(id: ticket_id)
        @errors   = []
      end

      def categories_allowed
        categories = Support::Attendance::TicketCategory.status_active.all

        categories.each do |all|
        end
      end

      def category_allowed?(category_id)
        category = Support::Attendance::TicketCategory.status_active.find_by(id: category_id)
        
        return false if category.nil?
        
        if category.filter_situation
          if !category.filter_situation_id.include?(@cadastre.presenter.current_situation_id)
            @errors << "CPF não está vínculado a situação exigida para este atendimento."
            return false
          end
        end

        if category.filter_convocation
          if !category.filter_convocation_id.include?(@cadastre.presenter.current_convocation_id)
            @errors << "CPF não está vínculado a convocação exigida para este atendimento."
            return false
          end
        end

        if category.filter_program
          if !category.filter_program_id.include?(@cadastre.program_id)          
            @errors << "CPF não está vínculado ao programa exigido para este atendimento."
            return false
          end
        end

        if category.filter_sub_program
          if category.filter_sub_program_id.include?(@cadastre.sub_program_id)  
            @errors << "CPF não está vínculado ao sub-programa exigido para este atendimento."
            return false
          end        
        end

        #if category.filter_sql
          # TODO: Realizar criacao 
        #end

        if category.due
          if !((category.started_at >= Date.today && category.ended_at <= Date.today))
            @errors << "Categoria fora do período especificado para atendimento."
            return false
          end
        end

      end

      private

      def generate_cadastre_mirror
        service  = Candidate::CadastreService.new(cadastre_id: @cadastre.id)
        service.create_mirror!

        @cadastre_mirror = service.cadastre_mirror
      rescue Exception => e
        p e
      end


    end 
  end
end