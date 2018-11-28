require_dependency 'support/application_record'

module Support
  module Attendance
    class StepDocument < ApplicationRecord
      self.table_name = 'sihab.attendance_step_documents'
    end
  end
end
