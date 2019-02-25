module Support
  module Pivotal
    class Session < ApplicationRecord
      self.table_name = 'extranet.pivotal_sessions'

      audited
    end
  end
end
