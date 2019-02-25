require_dependency 'support/application_record'

module Support
  module Pivotal
    class Sector < ApplicationRecord
      self.table_name = 'extranet.pivotal_sectors'
    end
  end
end
