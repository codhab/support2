require_dependency 'support/application_record'

module Support
  module Entity
    class CadastreDocument < ApplicationRecord
      self.table_name = 'sihab.entity_cadastre_documents'

      audited
    end
  end
end
