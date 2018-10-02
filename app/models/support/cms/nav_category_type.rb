require_dependency 'support/application_record'

module Support
  module Cms
    class NavCategoryType < ApplicationRecord
      self.table_name = 'extranet.cms_nav_category_types'

      audited
    end
  end
end
