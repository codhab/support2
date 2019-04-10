require_dependency 'support/application_record'

module Support
  module Pivotal
    class UserNav < ApplicationRecord
      self.table_name = 'extranet.pivotal_nav_permissions'

      audited
    end
  end
end
