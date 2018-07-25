require_dependency 'support/application_record'

module Support
  module Sefaz
    class ExemptionType < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.sefaz_exemption_types'
    end
  end
end
