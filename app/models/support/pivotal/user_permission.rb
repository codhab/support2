require_dependency 'support/application_record'

module Support
  module Pivotal
    class UserPermission < ApplicationRecord
      self.table_name = 'extranet.pivotal_user_permissions'
    end
  end
end
