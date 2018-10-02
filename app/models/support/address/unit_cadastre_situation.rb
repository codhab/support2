require_dependency 'support/application_record'

module Support
  module Address
    class UnitCadastreSituation < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.address_unit_cadastre_situations'
    end
  end
end
