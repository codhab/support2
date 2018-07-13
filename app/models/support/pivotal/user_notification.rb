require_dependency 'support/application_record'

module Support
  module Pivotal
    class UserNotification < ApplicationRecord
      self.table_name = 'extranet.pivotal_user_notifications'
    end
  end
end
