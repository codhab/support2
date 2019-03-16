require_dependency 'support/application_record'

module Support
  module Social
    class City  < ApplicationRecord # :nodoc:
      self.table_name = 'generic.social_cities'

      has_many :burghs
    end
  end
end
