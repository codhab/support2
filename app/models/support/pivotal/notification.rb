require_dependency 'support/application_record'

module Support
  module Pivotal
    class Notification < ApplicationRecord
      self.table_name = 'extranet.pivotal_notifications'
    end
  end
end
