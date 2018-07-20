require_dependency 'support/application_record'

module Support
  module Cpl
    class Participant < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.cpl_participants'
    end
  end
end
