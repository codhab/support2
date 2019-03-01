require_dependency 'support/application_record'

module Support
  module Social
    class CadastreStep  < ApplicationRecord # :nodoc:
      self.table_name = 'generic.social_cadastre_steps'
    end
  end
end
