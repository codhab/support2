require_dependency 'support/application_record'

module Support
  module Entity
    class MemberJob < ApplicationRecord
      self.table_name = 'sihab.entity_member_jobs'
    end
  end
end
