require_dependency 'support/application_record'

module Support
  module Candidate
    class ActivityDocument < ApplicationRecord
      self.table_name = 'sihab.candidate_activity_documents'

      audited
    end
  end
end
