require_dependency 'support/application_record'

module Support
  module Pivotal
    class Permission < ApplicationRecord
      self.table_name = 'extranet.pivotal_permissions'

      belongs_to :group, class_name: 'Support::Pivotal::PermissionGroup', foreign_key: :group_id
    end
  end
end
