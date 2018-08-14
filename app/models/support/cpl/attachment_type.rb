require_dependency 'support/application_record'

module Support
  module Cpl
    class AttachmentType < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.cpl_attachment_types'
    end
  end
end
