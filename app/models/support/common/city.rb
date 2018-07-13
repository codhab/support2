require_dependency 'support/application_record'

module Support
  module Common
    class City < ApplicationRecord
      self.table_name = 'common.cities'
    end
  end
end