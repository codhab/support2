require_dependency 'support/application_record'

module Support
  module Brb
    class Remittance < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.brb_remittances'

    end
  end
end
