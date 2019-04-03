require_dependency 'application_record'

module Support
  module Document
    class AllotmentCadastre < ApplicationRecord
      self.table_name = 'sihab.document_allotment_cadastres'

      audited
    end 
  end
end
