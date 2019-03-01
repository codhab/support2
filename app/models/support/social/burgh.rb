require_dependency 'support/application_record'

module Support
  module Social
    class Burgh  < ApplicationRecord # :nodoc:
      self.table_name = 'generic.social_burghs'
    end
  end
end
