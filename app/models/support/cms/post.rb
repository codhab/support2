require_dependency 'support/application_record'

module Support
  module Cms
    class Post < ApplicationRecord
      self.table_name = 'extranet.cms_posts'

      audited
    end
  end
end
