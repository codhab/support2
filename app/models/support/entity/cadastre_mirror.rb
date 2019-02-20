require_dependency 'support/application_record'

module Support
  module Entity
    class CadastreMirror < ApplicationRecord
      self.table_name = 'sihab.entity_cadastre_mirrors'

      audited
    end
  end
end
