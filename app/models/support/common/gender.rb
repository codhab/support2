require_dependency 'support/application_record'

module Support
  module Common
    class Gender < ApplicationRecord
      self.table_name = 'common.genders'
    end
  end
end
