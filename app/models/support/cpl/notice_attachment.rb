require_dependency 'support/application_record'

module Support
  module Cpl
    class NoticeAttachment < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.cpl_notice_attachments'
    end
  end
end
