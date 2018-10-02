require_dependency 'support/application_record'

module Support
  module Address
    class EnterpriseCompany < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.address_enterprise_companies'
    end
  end
end
