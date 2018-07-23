require_dependency 'support/application_record'

module Support
  module Cpl
    class NoticeParticipant < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.cpl_notice_participants'

      belongs_to :notice,      required: false, class_name: 'Support::Cpl::Notice'
      belongs_to :participant, required: false, class_name: 'Support::Cpl::Participant'
    end
  end
end
