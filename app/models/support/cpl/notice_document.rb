require_dependency 'support/application_record'

module Support
  module Cpl
    class NoticeDocument < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.cpl_notice_documents'

      belongs_to :document_type, required: false, class_name: 'Support::Cpl::DocumentType'
      belongs_to :notice,        required: false, class_name: 'Support::Cpl::Notice'
    end
  end
end
