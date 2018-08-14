require_dependency 'support/application_record'

module Support
  module Brb
    class CategoryType < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.brb_category_types'
    end
  end
end
