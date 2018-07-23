require_dependency 'support/application_record'

module Support
  module Cpl
    class DocumentParticipant < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.cpl_document_participants'

      belongs_to :notice_participant, required: false, class_name: 'Support::Cpl::NoticeParticipant'
      belongs_to :document_notice,    required: false, class_name: 'Support::Cpl::DocumentNotice'
    end
  end
end
