require_dependency 'support/application_record'

module Support
  module Entity
    class CadastreSituation < ApplicationRecord
      self.table_name = 'sihab.entity_cadastre_situations'

      audited
    end
  end
end
