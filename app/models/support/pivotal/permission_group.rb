require_dependency 'support/application_record'

module Support
  module Pivotal
    class PermissionGroup < ApplicationRecord
      self.table_name = 'extranet.pivotal_permission_groups'

      has_many :permissions, class_name: 'Support::Pivotal::Permission', foreign_key: :group_id
    end 
  end
end
