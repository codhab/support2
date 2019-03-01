require_dependency 'support/application_record'

module Support
  module Social
    class Cadastre  < ApplicationRecord # :nodoc:
      self.table_name = 'generic.social_cadastres'
    end
  end
end
