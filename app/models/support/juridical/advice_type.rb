require_dependency 'support/application_record'

module Support
  module Juridical
    class AdviceType < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.juridical_advice_types'
    end
  end
end
