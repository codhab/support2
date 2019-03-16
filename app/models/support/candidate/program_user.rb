require_dependency 'application_record'

module Support
  module Candidate
    class ProgramUser < ApplicationRecord
      self.table_name = 'sihab.candidate_program_users'

      audited
    end
  end
end
