module Support
  class AttendanceTicketDocument < ApplicationRecord
    belongs_to :document_type
  end
end
