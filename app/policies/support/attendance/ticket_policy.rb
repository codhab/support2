require_dependency 'support/application_policy'

module Support
  module Attendance
    class TicketPolicy < ApplicationPolicy
      
      def require_document?(document_id: nil, ticket_step_id: nil, context: nil, dependent_mirror_id: nil)
        document = Support::Attendance::StepDocument.find_by(id: document_id)
        ticket_step = Support::Attendance::TicketCategoryStep.find_by(id: ticket_step_id)
        
        ticket           = self
        cadastre_mirror  = ticket.cadastre_mirror
        cadastre         = ticket.cadastre
        dependent_mirror = ticket.cadastre_mirror.dependent_mirrors.find_by(id: dependent_mirror_id)
        
        return false if document.document_type.nil?

        case context
        when 'cadastre'

          
          case document.document_type.code
          
          # Documento de identificação (frente e verso)
          when 0
            return true if ticket_step.document_required

            if (cadastre.rg != cadastre_mirror.rg) || (cadastre.rg_org != cadastre.rg_org) || (cadastre.rg_uf_id != cadastre.uf_id) 
              return true
            end

            false

          # Comprovante CPF
          when 1 
            return true if ticket_step.document_required
            

          # Comprovante de residência no DF nos últimos 5 anos.
          when 2
            return true if ticket_step.document_required
          

          # Comprovante de tempo de domicilio
          when 3
            return true if ticket_step.document_required
            

          # Comprovante de deficiencia declarada
          when 4
            return true if ticket_step.document_required && cadastre_mirror.special_condition
            
            if (cadastre.special_condition != cadastre_mirror.special_condition) && cadastre_mirror.special_condition
              return true
            end
          
          
          # Certidão de nascimento
          when 6 
            return true if ticket_step.document_required
            
          
          # Declaração de união estável com firma reconhecida
          when 7 
            # civil_state_id => 2 (União estável)
            return true if ticket_step.document_required && cadastre_mirror.civil_state_id == 7

            if (cadastre.civil_state_id != cadastre_mirror.civil_state_id) && (cadastre_mirror.civil_state_id == 7)
              return true
            end
            

          # Certidão de casamento
          when 8
            # civil_state_id => 2 (Casado(a))
            return true if ticket_step.document_required && cadastre_mirror.civil_state_id == 2

            if (cadastre.civil_state_id != cadastre_mirror.civil_state_id) && (cadastre_mirror.civil_state_id == 2)
              return true
            end
          
          # Certidão de óbito de cônjuge
          when 26
            # civil_state_id => 3 (Viuvo(a))
            return true if ticket_step.document_required && cadastre_mirror.civil_state_id == 4

            if (cadastre.civil_state_id != cadastre_mirror.civil_state_id) && (cadastre_mirror.civil_state_id == 4)
              return true
            end
            
            
          # Documentação de divórcio
          when 28
            # civil_state_id => 3 (Separado/Divorciado(a))
            return true if ticket_step.document_required && cadastre_mirror.civil_state_id == 3

            if (cadastre.civil_state_id != cadastre_mirror.civil_state_id) && (cadastre_mirror.civil_state_id == 3)
              return true
            end
            
          end
        

        when 'income'

        when 'dependent'

          case document.document_type.code
          # CPF do dependente
          when 13
            return true #if ticket_step.document_required && dependent_mirror.age.to_i >= 14 
          end
            

        end

      end

    end
  end
end