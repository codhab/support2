require_dependency 'support/application_record'

module Support
  module Pivotal
    class PermissionProfile < ApplicationRecord
      self.table_name = 'extranet.pivotal_permission_profiles'
    end 
  end
end
