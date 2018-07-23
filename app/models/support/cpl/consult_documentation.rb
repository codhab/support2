require_dependency 'support/application_record'

module Support
  module Cpl
    class ConsultDocumentation < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.cpl_consult_documentations'

      belongs_to :document_participant, required: false, class_name: 'Support::Cpl::ConsultDocumentation'
      belongs_to :notice_participant,   required: false, class_name: 'Support::Cpl::NoticeParticipant'
    end
  end
end
