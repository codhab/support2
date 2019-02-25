require_dependency 'support/application_record'

module Support
  module Pivotal
    class Permission < ApplicationRecord
      self.table_name = 'extranet.pivotal_engine_permissions'

      audited
    end
  end
end
