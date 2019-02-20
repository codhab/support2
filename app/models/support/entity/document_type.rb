require_dependency 'support/application_record'

module Support
  module Entity
    class DocumentType < ApplicationRecord
      self.table_name = 'sihab.entity_document_types'

      audited
    end
  end
end
