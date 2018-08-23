require_dependency 'support/application_record'

module Support
  module Sei
    class ProcedureType < ApplicationRecord
      self.table_name = 'extranet.sei_procedure_types'
      
      audited
    end
  end
end
