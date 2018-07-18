require_dependency 'support/application_record'

module Support
  module Helpdesk
    class TypeUser < ApplicationRecord
      self.table_name = 'extranet.helpdesk_type_users'
    end
  end  
end
