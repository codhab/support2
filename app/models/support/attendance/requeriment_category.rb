require_dependency 'support/application_record'

module Support
  module Attendance
    class RequerimentCategory < ApplicationRecord
      self.table_name = 'sihab.attendance_requeriment_categories'
    end 
  end
end
