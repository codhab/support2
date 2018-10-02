require_dependency 'support/application_record'

module Support
  module Entity
    class CadastreMember < ApplicationRecord
      self.table_name = 'sihab.entity_cadastre_members'

      audited
    end
  end
end
