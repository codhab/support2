require_dependency 'support/application_record'

module Support
  module Juridical
    class Instancy < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.juridical_instancies'
    end
  end
end
