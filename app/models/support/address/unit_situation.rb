require_dependency 'support/application_record'

module Support
  module Address
    class UnitSituation < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.address_unit_situations'

      def link! unit, cadastre, user, situation, observation, computer, external
        unit_situation = self.new(
          unit_id: unit,
          cadastre_id: cadastre,
          situation_tyoe_id: situation,
          observation: observation,
          computer: computer,
          external: external,
          user_id: user
        ).save
      end
    end
  end
end
