require_dependency 'support/application_record'

module Support
  module Cpl
    class ParticipantLog < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.cpl_participant_logs'

      belongs_to :participant, required: false, class_name: 'Support::Cpl::Participant'
    end
  end
end
