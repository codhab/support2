require_dependency 'application_record'

module Support
  module Document
    class Allotment < ApplicationRecord
      self.table_name = 'sihab.document_allotments'

      audited
    end
  end
end
