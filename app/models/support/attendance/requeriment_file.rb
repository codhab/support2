require_dependency 'support/application_record'

module Support
  module Attendance
    class RequerimentFile < ApplicationRecord
      self.table_name = 'sihab.attendance_requeriment_files'
    end 
  end
end
