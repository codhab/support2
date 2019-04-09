require_dependency 'application_record'

module Support
  module Document
    class AllotmentCategory < ApplicationRecord
      self.table_name = 'sihab.document_allotment_categories'

      audited
    end
  end
end
