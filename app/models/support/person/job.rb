require_dependency 'support/application_record'

module Support
  module Person
    class Job < ApplicationRecord
      self.table_name = 'extranet.person_jobs'
    end
  end
end
