require_dependency 'support/application_record'

module Support
  module Cms
    class NavCategory < ApplicationRecord
      self.table_name = 'extranet.cms_nav_categories'

      audited
    end
  end
end
