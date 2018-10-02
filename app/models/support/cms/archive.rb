require_dependency 'support/application_record'

module Support
  module Cms
    class Archive < ApplicationRecord
      self.table_name = 'extranet.cms_archives'

      audited
    end
  end
end
