require_dependency 'support/application_record'

module Support
  module Common
    class Kinship < ApplicationRecord
      self.table_name = 'common.kinships'
    end
  end
end
