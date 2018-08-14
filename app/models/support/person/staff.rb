require_dependency 'support/application_record'

module Support
  module Person
    class Staff < ApplicationRecord
      self.table_name = 'extranet.person_staffs'

      def password=(value)
        self[:password] = BCrypt::Password.create(value)
      end

      def presenter
        call_presenter('Support::Person::StaffPresenter', self)
      end
    end
  end
end
