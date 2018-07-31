require_dependency 'support/application_record'

module Support
  module Attendance
    class Chat < ApplicationRecord
      self.table_name = 'sihab.attendance_chats'
    end 
  end
end
