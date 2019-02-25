require_dependency 'support/application_record'

module Support
  module Pivotal
    class EnginePermission < ApplicationRecord
      self.table_name = 'extranet.pivotal_engine_permissions'

      audited
    end
  end
end
