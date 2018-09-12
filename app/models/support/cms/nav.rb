require_dependency 'support/application_record'

module Support
  module Cms
    class Nav < ApplicationRecord
      self.table_name = 'extranet.cms_navs'
    end
  end
end
