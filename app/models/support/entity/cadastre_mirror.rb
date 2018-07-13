require_dependency 'support/pplication_record'

module Support
  module Entity
    class CadastreMirror < ApplicationRecord
      self.table_name = 'sihab.entity_cadastre_mirrors'
    end
  end
end
