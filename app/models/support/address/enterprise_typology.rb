require_dependency 'support/application_record'

module Support
  module Address
    class EnterpriseTypology < ApplicationRecord
      self.table_name = 'sihab.address_enterprise_typologies'

      audited
    end
  end
end
