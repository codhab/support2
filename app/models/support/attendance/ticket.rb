require_dependency 'support/application_record'

module Support
  module Attendance
    class Ticket < ApplicationRecord
      self.table_name = 'sihab.attendance_tickets'

      scope :no_internal, -> { where(internal: false) }
    end
  end
end
