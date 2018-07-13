require_dependency 'application_record'

module Support
  module Entity
    class MemberMirror < ApplicationRecord
      self.table_name = 'sihab.entity_member_mirrors'
    end
  end
end
