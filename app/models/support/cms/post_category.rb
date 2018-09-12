require_dependency 'support/application_record'

module Support
  module Cms
    class PostCategory < ApplicationRecord
      self.table_name = 'extranet.cms_post_categories'
    end
  end
end
