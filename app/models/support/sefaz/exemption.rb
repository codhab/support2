require_dependency 'support/application_record'

module Support
  module Sefaz
    class Exemption < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.sefaz_exemptions'

      audited
    end
  end
end
