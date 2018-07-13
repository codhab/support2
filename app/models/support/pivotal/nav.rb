require_dependency 'support/application_record'

module Support
  module Pivotal
    class Nav < ApplicationRecord
      self.table_name = 'extranet.pivotal_navs'
    end
  end
end
