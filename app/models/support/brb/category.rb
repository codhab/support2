require_dependency 'support/application_record'

module Support
  module Brb
    class Category < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.brb_categories'
      belongs_to :invoice_type, required: false, class_name: 'Support::Brb::InvoiceType'

      has_many :invoices, class_name: 'Support::Brb::Invoice'

      scope :by_id,  ->(id) { where(id: id) }      

      def name_with_value
        "#{self.name} - R$ #{self.default_value.round(2)}"
      end
    end
  end
end
