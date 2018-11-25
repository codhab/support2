require_dependency 'support/application_presenter'

module Support
  module Person
    class StaffPresenter < ApplicationPresenter
     
      def short_name
        short = self.name.split(' ')
        "#{short[0]} #{short[-1]}"
      end

      def first_name 
        frist = self.name.split(' ')
        "#{frist[0]}"
      end

      def attendant_current_station
        attendant = Attendance::Attendant.find_by(staff_id: self.id)
        attendant_station = Attendance::AttendantStation.find_by(attendant_id: attendant)
        
        Attendance::Station.find_by(id: attendant_station.station_id)
      end

      def attendant_current_station_name 
        attendant_current_station.name
      end

    end
  end
end