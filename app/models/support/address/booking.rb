module Support
  module Address
    class Booking
      include ActiveModel::Model
      attr_accessor :cpf, :observation, :cadastre, :unit_id

      validate  :validate_booking?

      def validate_booking?
        @cadastre = ::Candidate::Cadastre.find_by(cpf: self.cpf)
        @unit = ::Address::Unit.find_by(id: self.unit_id)

        if @cadastre.nil?
          errors.add(:base, 'CPF não existe na base de dados')
          return false
        end

        # candidatos que nao sao de regularizacao
        if [1,2,5].include?(@cadastre.program_id)
          if @cadastre.current_situation.situation_type_id != 4 && ![14, 72].include?(@cadastre.current_procedural.procedural_type_id)
            errors.add(:base, 'Situação do CPF não é válida para esta operação')

            unless (@cadastre.current_procedural.process_number.present? || @cadastre.current_procedural.process_sei.present?)
              errors.add(:base, 'Candidato não possui número de processo.')
            end
          end

          if @unit.current_unit_situation.present? && %w(0 1 5).include?(@unit.current_unit_situation.situation_id.to_s)
            if @unit.current_unit_situation.cadastre_id == @cadastre.id
              errors.add(:base, 'CPF já possui vinculo com imóvel.')
            end
          end

          if @cadastre.cadastre_indications.where('inactive is not true').present?
            if @cadastre.cadastre_indications.where('inactive is not true and enterprise_id != ?', @unit.project_enterprise_id).present?
              errors.add(:base, 'CPF não possui indicação para este empreendimento.')
            end
          else
            errors.add(:base, 'CPF não possui indicação para empreendimento.')
          end

        # candidatos de regularizacao
        elsif [3, 6, 4].include?(@cadastre.program_id)
          unless @cadastre.current_procedural.present?
            errors.add(:base, 'Candidato não possui situação processual.')

            unless [3, 4].include?(@cadastre.current_situation.situation_type_id) && [9, 10, 14, 64, 65, 66, 72].include?(@cadastre.current_procedural.procedural_type_id)
              errors.add(:base, 'Situação do CPF não é válida para esta operação')
            end

            unless @cadastre.current_procedural.process_number.present? || @cadastre.current_procedural.process_sei.present?
              errors.add(:base, 'Candidato não possui número de processo.')
            end
          end
        end
      end
    end
  end
end
