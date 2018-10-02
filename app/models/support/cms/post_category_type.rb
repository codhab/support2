require_dependency 'support/application_record'

module Support
  module Cms
    class PostCategoryType < ApplicationRecord
      self.table_name = 'extranet.cms_post_category_types'

      audited
    end
  end
end
