require_dependency 'support/application_record'

module Support
  module Sefaz
    class Allotment < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.sefaz_allotments'

      audited
    end
  end
end
