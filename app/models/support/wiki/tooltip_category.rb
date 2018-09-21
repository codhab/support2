require_dependency 'support/application_record'
module Support
  module Wiki
    class TooltipCategory < ApplicationRecord
      self.table_name = 'extranet.wiki_tooltip_categories'
      audited
    end
  end
end
