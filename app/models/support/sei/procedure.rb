require_dependency 'support/application_record'
module Support
  module Sei
    class Procedure < ApplicationRecord
      self.table_name = 'extranet.sei_procedures'
      
      audited
    end
  end
end
