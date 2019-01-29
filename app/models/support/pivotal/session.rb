module Support
  module Pivotal
    class Session < ApplicationRecord
      self.table_name = 'extranet.pivotal_sessions'
    end
  end
end
