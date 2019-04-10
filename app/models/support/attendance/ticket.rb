require_dependency 'support/application_record'

module Support
  module Attendance
    class Ticket < ApplicationRecord
      self.table_name = 'sihab.attendance_tickets'

      has_many :ticket_steps
      
      scope :no_internal, -> { where(internal: false) }
    end
  end
end
