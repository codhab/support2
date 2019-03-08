require_dependency 'support/application_record'

module Support
  module Candidate
    class Iptu < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.candidate_iptus'
      
      audited
    end
  end
end
