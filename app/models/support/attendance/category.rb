require_dependency 'support/application_record'

module Support
  module Attendance
    class Category < ApplicationRecord
      self.table_name = 'sihab.attendance_categories'
    end
  end
end
