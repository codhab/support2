require_dependency 'support/application_record'

module Support
  module Cpl
    class NoticeType < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.cpl_notice_types'
    end
  end
end
