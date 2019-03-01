require_dependency 'support/application_record'

module Support
  module Social
    class DocumentType  < ApplicationRecord # :nodoc:
      self.table_name = 'generic.social_document_types'
    end
  end
end
