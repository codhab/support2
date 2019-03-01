require_dependency 'support/application_record'

module Support
  module Social
    class CadastreDocument  < ApplicationRecord # :nodoc:
      self.table_name = 'generic.social_cadastre_documents'
    end
  end
end
