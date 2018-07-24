require_dependency 'support/application_record'

module Support
  module Juridical
    class Complainant < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.juridical_complainants'
    end
  end
end
