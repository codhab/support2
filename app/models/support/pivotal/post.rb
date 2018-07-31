require_dependency  'application_record'

module Support
  module Pivotal
    class Post < ApplicationRecord
      self.table_name = 'extranet.pivotal_posts'
    end
  end
end
