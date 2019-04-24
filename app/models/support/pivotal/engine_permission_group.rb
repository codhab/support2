require_dependency 'support/application_record'

module Support
  module Pivotal
    class EnginePermissionGroup < ApplicationRecord
      self.table_name = 'extranet.pivotal_engine_permission_groups'

      audited
    end
  end
end
