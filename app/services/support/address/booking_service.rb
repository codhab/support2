module Support
  module Address
    class BookingService
      def booking! unit_id, cadastre_id
        cadastre = Support::Candidate::Cadastre.find_by(id: cadastre_id)
        unit = Support::Address::Unit.find_by(id: unit_id)

        Support::Address::UnitSituation.create(observation, 5, user, cadastre, unit, false, false)
        Support::Candidate::CadastreSituation.create(observation, 5, user, cadastre, unit, false, false)
      end
    end
  end
end
