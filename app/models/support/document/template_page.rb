require_dependency 'application_record'

module Support
  module Document
    class TemplatePage < ApplicationRecord
      self.table_name = 'sihab.document_template_pages'

      audited
    end
  end
end
