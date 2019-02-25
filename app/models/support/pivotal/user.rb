require_dependency 'support/application_record'

module Support
  module Pivotal
    class User < ApplicationRecord
      self.table_name = 'extranet.pivotal_users'

      def password=(value)
        self[:password] = BCrypt::Password.create(value)
      end

    end
  end
end
