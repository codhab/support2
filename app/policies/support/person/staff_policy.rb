require_dependency 'support/application_policy'

module Support
  module Person
    class StaffPolicy < ApplicationPolicy

      def is_attendant?
        attendant = Attendance::Attendant.find_by(staff_id: self.id)
        Attendance::AttendantStation.where(attendant_id: attendant).present?
      end

    end
  end
end