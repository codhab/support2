require_dependency 'support/application_record'

module Support
  class Person
    class Sector < ApplicationRecord
      self.table_name = 'extranet.person_sectors'
    end
  end
end
