require_dependency 'support/application_record'

module Support
  module Cpl
    class NoticeDocument < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.cpl_notice_documents'
    end
  end
end
