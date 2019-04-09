require_dependency 'application_record'

module Support
  module Document
    class TemplateField < ApplicationRecord
      self.table_name = 'sihab.document_template_fields'

      audited
    end
  end
end
