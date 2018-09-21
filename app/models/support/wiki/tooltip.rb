require_dependency 'support/application_record'
module Support
  module Wiki
    class Tooltip < ApplicationRecord
      self.table_name = 'extranet.wiki_tooltips'
      audited
    end
  end
end
