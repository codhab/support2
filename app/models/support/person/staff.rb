require_dependency 'support/application_record'

module Support
  module Person
    class Staff < ApplicationRecord
      self.table_name = 'extranet.person_staffs'

      def password=(value)
        self[:password] = BCrypt::Password.create(value)
      end


      def short_name
        short = self.name.split(' ')
        "#{short[0]} #{short[-1]}"
      end
    end
  end
end
