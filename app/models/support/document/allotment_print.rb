require_dependency 'application_record'

module Support
  module Document
    class AllotmentPrint < ApplicationRecord
      self.table_name = 'sihab.document_allotment_prints'

      audited
    end
  end
end
