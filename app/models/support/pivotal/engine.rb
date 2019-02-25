module Support
  module Pivotal
    class Engine < ApplicationRecord
      self.table_name = 'extranet.pivotal_engines'
      audited
    end
  end
end
