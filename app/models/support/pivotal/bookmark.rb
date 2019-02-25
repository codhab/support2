require_dependency 'support/application_record'

module Support
  module Pivotal
    class Bookmark < ApplicationRecord
      self.table_name = 'extranet.pivotal_bookmarks'

      audited
    end
  end
end
