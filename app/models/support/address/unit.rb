require_dependency 'support/application_record'

module Support
  module Address
    class Unit < ApplicationRecord # :nodoc:
      self.table_name = 'sihab.address_units'

      has_many :unit_cadastres
      has_many :unit_situations

      def current_unit_cadastre
        self.unit_cadastres.order('created_at ASC').last rescue nil
      end

      def current_unit_situation
        self.unit_situations.order('created_at ASC').last rescue nil
      end

      def unit_void?
        self.current_unit_situation == 1 && (current_unit_cadastre.nil? || current_unit_cadastre.distrato?)
      end
    end
  end
end
