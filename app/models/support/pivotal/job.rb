require_dependency 'support/application_record'

module Support
  module Pivotal
    class Job < ApplicationRecord
      self.table_name = 'extranet.pivotal_jobs'
    end
  end
end
