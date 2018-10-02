require_dependency 'support/application_record'

module Support
  module Address
    class EnterpriseCompanyUser < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.address_enterprise_company_users'
    end
  end
end
