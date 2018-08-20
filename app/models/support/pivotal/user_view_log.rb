require_dependency 'application_record'

module Support
  module Pivotal
    class UserViewLog < ApplicationRecord
      self.table_name = 'extranet.pivotal_user_view_logs'

      audited

    end
  end
end
