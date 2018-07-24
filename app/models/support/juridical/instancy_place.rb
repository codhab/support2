require_dependency 'support/application_record'

module Support
  module Juridical
    class InstancyPlace < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.juridical_instancy_places'
    end
  end
end
