require_dependency 'support/application_record'

module Support
  module Juridical
    class Lawsuit < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.juridical_lawsuits'
    end
  end
end
