require_dependency 'support/application_record'

module Support
  module Attendance
    class RequerimentAttachment < ApplicationRecord
      self.table_name = 'sihab.attendance_requeriment_attachments'
    end 
  end
end
