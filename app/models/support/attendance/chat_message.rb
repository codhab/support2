require_dependency 'support/application_record'

module Support
  module Attendance
    class ChatMessage < ApplicationRecord
      self.table_name = 'sihab.attendance_chat_messages'
    end 
  end
end
