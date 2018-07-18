require_dependency 'support/application_record'

module Support
  module Person
    class Sector < ApplicationRecord
      self.table_name = 'extranet.person_sectors'
    end
  end
end
