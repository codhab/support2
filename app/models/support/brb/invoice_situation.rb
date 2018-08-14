require_dependency 'support/application_record'

module Support
  module Brb
    class InvoiceSituation < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.brb_invoice_situations'
    end
  end
end
