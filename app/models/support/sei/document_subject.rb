require_dependency 'support/application_record'

module Support
  module Sei
    class DocumentSubject < ApplicationRecord
      self.table_name = 'extranet.sei_document_subjects'

      audited
    end
  end
end
