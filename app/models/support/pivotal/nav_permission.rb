require_dependency 'support/application_record'

module Support
  module Pivotal
    class NavPermission < ApplicationRecord
      self.table_name = 'extranet.pivotal_nav_permissions'
    end
  end
end
