require_dependency 'support/application_record'

module Support
  module Pivotal
    class Permission < ApplicationRecord
      self.table_name = 'extranet.pivotal_permissions'
    end
  end
end
