require_dependency 'support/application_record'

module Support
  module Wiki 
    class Page < ApplicationRecord
      self.table_name = 'extranet.wiki_pages'

      audited
    end
  end
end
