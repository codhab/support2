require_dependency 'support/application_record'

module Support
  module Helpdesk
    class SituationType < ApplicationRecord
      self.table_name = 'extranet.helpdesk_situation_types'      
    end
  end
end