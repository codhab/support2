require_dependency 'support/application_record'

module Support
  module Candidate
    class EventualCadastre < ApplicationRecord
      self.table_name = 'sihab.candidate_eventual_cadastres'
    end
  end
end
