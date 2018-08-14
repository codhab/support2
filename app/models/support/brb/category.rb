require_dependency 'support/application_record'

module Support
  module Brb
    class Category < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.brb_categories'
      has_many :invoices, class_name: 'Support::Brb::Invoice'

      scope :active, -> { where(status: true).order(:name) }
      scope :by_id,  ->(id) { where(id: id) }

      validates :name, :default_value, presence: true
      validates :name, uniqueness: true

      def name_with_value
        "#{self.name} - R$ #{self.default_value.round(2)}"
      end
    end
  end
end
