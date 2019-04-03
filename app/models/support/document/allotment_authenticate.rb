require_dependency 'application_record'

module Support
  module Document
    class AllotmentAuthenticate < ApplicationRecord
      self.table_name = 'sihab.document_allotment_authenticates'

      audited
    end 
  end
end
