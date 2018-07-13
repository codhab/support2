require_dependency 'support/application_record'

module Support
  module Pivotal
    class Alert < ApplicationRecord
      self.table_name = 'extranet.pivotal_alerts'
    end
  end
end
