require_dependency 'application_record'

module Support
  module Document
    class Template < ApplicationRecord
      self.table_name = 'sihab.document_templates'

      audited
    end
  end
end
