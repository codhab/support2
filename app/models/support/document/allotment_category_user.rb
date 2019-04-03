require_dependency 'application_record'

module Support
  module Document
    class AllotmentCategoryUser < ApplicationRecord
      self.table_name = 'sihab.document_allotment_category_users'

      audited
    end
  end
end
