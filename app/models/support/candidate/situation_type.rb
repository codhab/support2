require_dependency 'application_record'

module Support
  module Candidate
    class SituationType < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_situation_types'

      audited

      belongs_to :program, required: false

      scope :by_program_id, -> (value) {
        where(program_id: value)
      }
    end
  end
end
