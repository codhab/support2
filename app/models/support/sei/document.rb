require_dependency 'support/application_record'

module Support
  module Sei
    class Document < ApplicationRecord
      self.table_name = 'extranet.sei_documents'
    end 
  end
end
