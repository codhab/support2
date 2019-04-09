require_dependency 'application_record'

module Support
  module Document
    class TemplateCadastre < ApplicationRecord
      self.table_name = 'sihab.document_template_cadastres'

      audited
    end 
  end
end
