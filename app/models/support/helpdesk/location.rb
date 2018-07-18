require_dependency 'support/application_record'

module Support
  module Helpdesk
    class Location < ApplicationRecord
      self.table_name = 'extranet.helpdesk_locations'
    end
  end
end
