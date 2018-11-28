require_dependency 'support/application_record'

module Support
  module Attendance
    class StationSituation < ApplicationRecord
      self.table_name = 'sihab.attendance_station_situations'

      enum situation: ['open', 'close']
    end
  end
end
