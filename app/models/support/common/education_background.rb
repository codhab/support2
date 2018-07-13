require_dependency 'support/application_record'

module Support
  module Common
    class EducationBackground < ApplicationRecord
      self.table_name = 'common.education_backgrounds'
    end
  end
end
