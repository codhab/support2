require_dependency 'support/application_record'

module Support
  module Cpl
    class NoticeParticipant < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.cpl_notice_participants'
    end
  end
end
