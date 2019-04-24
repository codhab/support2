require_dependency 'support/application_record'

module Support
  module Pivotal
    class NavPermissionGroup < ApplicationRecord
      self.table_name = 'extranet.pivotal_nav_permission_groups'

      audited
    end
  end
end
