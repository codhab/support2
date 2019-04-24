require_dependency 'support/application_record'

module Support
  module Pivotal
    class PermissionGroup < ApplicationRecord
      self.table_name = 'extranet.pivotal_permission_groups'

      audited
    end
  end
end
