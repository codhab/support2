require_dependency 'support/application_record'

module Support
  module Juridical
    class LegalAdvice < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.juridical_legal_advices'
    end
  end
end
