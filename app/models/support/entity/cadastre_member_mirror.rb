require_dependency 'support/application_record'

module Support
  module Entity
    class MemberMirror < ApplicationRecord
      self.table_name = 'sihab.entity_member_mirrors'

      audited
    end
  end
end
