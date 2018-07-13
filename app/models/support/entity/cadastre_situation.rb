require_dependency 'application_record'

module Support
  module Entity
    class CadastreSituation < ApplicationRecord
      self.table_name = 'sihab.entity_cadastre_situations'
    end
  end
end
