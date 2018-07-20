require_dependency 'support/application_record'

module Support
  module Cpl
    class Notice < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.cpl_notices'
    end
  end
end
