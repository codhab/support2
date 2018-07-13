require_dependency 'support/application_record'

module Support
  class Person
    class Staff < ApplicationRecord
      self.table_name = 'extranet.person_staffs'
    end
  end
end
