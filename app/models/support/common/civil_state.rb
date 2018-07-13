require_dependency 'support/application_record'

module Support
  module Common
    class CivilState < ApplicationRecord
      self.table_name = 'common.civil_states'
    end
  end
end
