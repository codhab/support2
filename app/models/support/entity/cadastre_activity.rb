require_dependency 'application_record'

module Support
  module Entity
    class CadastreActivity < ApplicationRecord
      self.table_name = 'sihab.entity_cadastre_activities'
    end
  end
end
