require_dependency 'support/application_record'

module Support
  module Juridical
    class Complement < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.juridical_complements'
    end
  end
end
