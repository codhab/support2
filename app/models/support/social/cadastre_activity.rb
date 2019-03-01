require_dependency 'support/application_record'

module Support
  module Social
    class CadastreActivity  < ApplicationRecord # :nodoc:
      self.table_name = 'generic.social_cadastre_activities'
    end
  end
end
