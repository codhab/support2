require_dependency 'support/application_record'

module Support
  module Attendance
    class Requeriment < ApplicationRecord
      self.table_name = 'sihab.attendance_requeriments'
    end 
  end
end
