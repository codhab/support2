require_dependency 'support/application_record'

module Support
  module Person
    class ContractType < ApplicationRecord
      self.table_name = 'extranet.person_contract_types'
    end
  end
end
