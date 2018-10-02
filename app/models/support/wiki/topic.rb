require_dependency 'support/application_record'
module Support
  module Wiki
    class Topic < ApplicationRecord
      self.table_name = 'extranet.wiki_topics'
      audited
    end
  end
end
