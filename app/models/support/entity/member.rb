require_dependency 'support/application_record'

module Support
  module Entity
    class Member < ApplicationRecord
      self.table_name = 'sihab.entity_members'
    end
  end
end
