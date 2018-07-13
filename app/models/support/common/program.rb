require_dependency 'support/application_record'

module Support
  module Common
    class Program < ApplicationRecord
      self.table_name = 'common.programs'
    end
  end
end
