require_dependency 'support/application_record'

module Support
  module Pivotal
    class UserGroup < ApplicationRecord
      self.table_name = 'extranet.pivotal_user_groups'
    end
  end
end
