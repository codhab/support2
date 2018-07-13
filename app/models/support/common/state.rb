require_dependency 'support/application_record'

module Support
  module Common
    class State < ApplicationRecord
      self.table_name = 'common.states'
    end
  end
end
