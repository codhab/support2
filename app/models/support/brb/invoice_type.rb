require_dependency 'support/application_record'

module Support
  module Brb
    class InvoiceType < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.brb_invoice_types'
    end
  end
end
