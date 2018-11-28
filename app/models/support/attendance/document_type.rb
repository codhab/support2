require_dependency 'support/application_record'

module Support
  module Attendance
    class DocumentType < ApplicationRecord
      self.table_name = 'sihab.attendance_document_types'
    end
  end
end
