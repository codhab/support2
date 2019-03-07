module Support
  module Address
    class BookingService
      # O candidato precisa ter situação processual
      # O imóvel precisa estar vazio

      def initialize(cadastre, unit, user)
        @cadastre = Support::Candidate::Cadastre.find(cadastre)
        @unit     = Support::Address::Unit.find(unit)
        @user     = Support::Pivotal::User.find(user)
      end

      def book! booking_observation
        return false unless @unit.unit_void?

        #realiza a criação de um novo registro em unit
        unit_cadastre = @unit.unit_cadastres.new({
          cadastre_id: @cadastre.id,
          observation: booking_observation,
          situation_id: 1
        }).save

        #imovel_reservado
        @unit.update(situation_unit_id: 6)

        update_cadastre(@cadastre.current_procedural, booking_observation, unit_cadastre.id)
        create_log(booking_observation)
      end

      private

      def update_cadastre current_procedural, booking_observation, unit_cadastre

        @cadastre.cadastre_procedurals.new(
          procedural_type_id: 8,  #em ordem com endereço
          process_number: current_procedural.process_number,
          process_sei: current_procedural.process_sei,
          unit_cadastre_id: unit_cadastre,
          user_id: @user.id,
          observation: booking_observation,
          cadastre_convocation_id: current_procedural.cadastre_convocation_id
        ).save

      end


      def create_log booking_observation
        @cadastre.cadastre_activities.new({
          user_id: @user.id,
          activity_type_id: 16, #reserva de imóvel
          computer: true,
          justify: booking_observation,
          title: "Reserva de imóvel"
        }).save
      end
    end
  end
end
