require_dependency 'support/application_record'

module Support
  module Entity
    class Cadastre < ApplicationRecord
      self.table_name = 'sihab.entity_cadastres'
    end
  end
end
