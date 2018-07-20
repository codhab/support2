require_dependency 'support/application_record'

module Support
  module Cpl
    class DocumentType < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.cpl_document_types'
    end
  end
end
