require_dependency 'support/application_record'

module Support
  module Attendance
    class RequerimentDocument < ApplicationRecord
      self.table_name = 'sihab.attendance_requeriment_documents'
    end 
  end
end
