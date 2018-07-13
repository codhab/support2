require_dependency 'support/application_record'

module Support
  module Person
    class EducationType < ApplicationRecord
      self.table_name = 'extranet.person_education_types'
    end
  end
end

