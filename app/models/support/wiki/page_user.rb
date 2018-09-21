require_dependency 'support/application_record'

module Support
  module Wiki
    class PageUser < ApplicationRecord
      self.table_name = 'extranet.wiki_page_users'
      audited
    end
  end
end
