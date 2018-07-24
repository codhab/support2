require_dependency 'support/application_record'

module Support
  module Juridical
    class Defendant < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.juridical_defendants'
    end
  end
end
